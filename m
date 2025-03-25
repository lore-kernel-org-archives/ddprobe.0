Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D7B219E4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742863194; cv=none; b=b0X91GbDr1BeIt31uADgRDvLgktyq3n60Ciknl9eIOyXLI0Ig4Bjk6ENgnAsOg1TxBtit3MILRtBo5gKmnats9to5l14edGxFVtEayA0+mkJdmi1LPZro3Q9QnK1hta6JydUhyjgTMVTuZE+Thtycc0gghQQ7Nv1vqltUGbsYkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742863194; c=relaxed/simple;
	bh=KhA7Jnm42vGTBxj/BqQJFhMSKFTFpz6HutQUqdRcBAY=;
	h=To:Subject:From:Message-Id:Date; b=iCoxXmQ4DdPkTROn1Pynhs106lRKTvtiSf6UP5u5yAP1EyOMjXhJDEAQRkLvM7hUvLwkp1RWVnpSTrdtbNoUoQOQRGBjTJaHwC8O9DBMMwivetZzUI3Xb/+O4FsDH9P3fhEMuCsZ072L0Qk48Ms1OiRUj1ZRV2Tzya4MEVfV0h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JN/34nOR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JN/34nOR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C323CC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742863193;
	bh=KhA7Jnm42vGTBxj/BqQJFhMSKFTFpz6HutQUqdRcBAY=;
	h=To:Subject:From:Date:From;
	b=JN/34nORPmW4UxOwr18+/qSeUoG5uDI88lNquP3AdyM8VywYJiE1hZKofOH0TkR9e
	 e+5T2AoEspw+96KgfJ9zVYXzwQAEWJVjYwnNIZmRKlY41fWO+MXv8aLzOmxjrL1jgE
	 uVxSRTtbxFsSsteNvwR/x/SCl1zJFvu6cmG/H3A6Ku/Cw2H1IxIU5lAQm8CiroMdIW
	 g587kKuBfuAJIFkCm6z/EtUSSl6AZ2WauqC3Ay1ES2ILHqMKzeW28dOdDIgXOCpNaT
	 OLnbCQJLr4IRwFtEDpK5ZbsizYWWa57imdJ7k3mJhKKUaCMYeIQQfvbZKjTLcByqmP
	 T9qlz0gQgqQwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD067C36002
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174286319366.31350.14893067320164203356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898155e932c45643951fc6112674f012757f2b53a73e2790d0a9270379544bb7
Date: Tue, 25 Mar 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742863193
