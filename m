Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5F6367F5B
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770039234; cv=none; b=Rh0bvZqc0o684D22ti7qlvlinpqiEb36q4vdsSGZnC33mM5+joxcvf5e6Lxpx6pVpKpfX2UdYZ6pzBQKTst4DBwq1OJW+0+adJ+bFGEiR1yct9WFSpUQeuf+3/SHrDXa8J5Oj9zfbl71xhPMcwxycmc4Gx3468BQx1equsgKfaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770039234; c=relaxed/simple;
	bh=JE87O7eTjJIdRxKkQuiRLlUiLx3k3wgqbWxaKCAuvCs=;
	h=To:Subject:From:Message-Id:Date; b=puRVM9P6PYhB1QG39UYBSXh2j4YYw3ON1gCop/4XfWs0WfqDJbRNIzGxqJsDzUV2jZJ2J7oc1IKuQUW/1HiFLx8QnztGYIpclVZnkjs7EaEnOLg64Ja/01qB6SYruztvRGk13KOSpnAWRodI5K8+mBX9EKyoLZnxft+xbJ5l/Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyXhnUlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyXhnUlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8E7C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770039233;
	bh=JE87O7eTjJIdRxKkQuiRLlUiLx3k3wgqbWxaKCAuvCs=;
	h=To:Subject:From:Date:From;
	b=AyXhnUlQWZDWeD0xnVGjO6QJEUFXSxDGtaQFSs+xRA2t98sRMXof4I1gIzeXDJKY9
	 TX2GRK0IBVglpJ44072FE4Ke06oq4LBrxUSC0vSQf1eL67bMIY9bLGsiQoIuyUgwE6
	 mD5oKvmMUul4tGf3W6f91u4orKxCL7VBpei+wPEf3nD85TcO+pYP0zmBB7Tr83riR3
	 cUIcDR6gg6gvCoKejEBRoUUTRcoXWcZNeJaz6bcwHA0rN4o7Bg2FTwD9UoHo2AjxO6
	 /ZO/PIAlyOlEkjuenjQ6peyLiOLoShM0Bnwg+8jcW9IZAa4jGy5tGrmRdjzZHmUf8i
	 9gcnr/uV1K6eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28EBE7316F
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003923365.18336.1757598471843551864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ac7389741f8e0524720776ba719469e6faa00ba1095632306ec7e120c93232
Date: Mon, 02 Feb 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770039233
