Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009831CF8B
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709794697; cv=none; b=o0uZGpNyhnzKtN1+doZtm4U3LYXAW8S6fd2C9stX3HMtTiYwsgj753wRIgYvSleVDNPbj0F27oEIedP5bwg9BeUXsVH8OyoeMnvZIpXURYKJ6INOiJ9BGGhJZisvlndI6vg+LaYK6lbh+Sr1I8439iNnfXuInkAxVCcJd+PAZgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709794697; c=relaxed/simple;
	bh=INT8Knhzjc553dpq9RKsrRD7MBDrQ6yoZ9gHzLNt65s=;
	h=To:Subject:From:Message-Id:Date; b=HJBrohp0iKYLr3Pj+2Tq0g+oQ4aLfTyAJaQU35ZjXfzzP9s0hHfYiHyL89QP/G744DcdklIMIi3ZA9My6rKq9/5Tfpd3dfzYlvOPSoWHW0RyPYhL0+H/BL+OZJB+9mTSjZjmZKq7gr05jQDuIOfjcqLDsrYn9tE7eIPH7Jphlr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVvCX4J7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVvCX4J7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8018FC433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709794696;
	bh=INT8Knhzjc553dpq9RKsrRD7MBDrQ6yoZ9gHzLNt65s=;
	h=To:Subject:From:Date:From;
	b=EVvCX4J7CFOvIvcjirBW2U2NKxvvQkvNvq4YxV1jDXRc/sidvVGk5YwubG0fTfsVn
	 IUIZMiV5orBJI68xKwANozrE5y418O7B2gyjs/7qDe5xxP0TV/NIkLh9u6RXlb9Udo
	 lMR1G3An7yFwWViU8Gda633/W5EeVePwrQ42Z6kq1NwED3I1e62UpjUgY8T1M8JUbs
	 yGk+X44JA8Xb6LaiId//0xq+wvpM4/vz7f/OaAEFUPDZ8/Soophun5C2QOcS4CnTzg
	 FT68k1Z30/KXsIp13dMt7iZVoLgf0ioZOEoQzG5wHKpC9SD7qkaXq2bqBMO/znoNg3
	 TqfNZZmCNYe1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A12C48BF6
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170979469640.4723.4835083107822272896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96fdeff2fbb6764a648ca398f92f3b546790b548427bb39388df72edaecd7679
Date: Thu, 07 Mar 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709794696
