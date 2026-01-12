Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2183C17
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768178634; cv=none; b=TLdrbb/w4giNh2f9nkczfrPvOeWQUk0OQwcCedbFZoXwtpL/rWfbPPzLvGjSdraNSMwsmc2u44LsXkSopzy4eWH7JxFdrEtZ6nHewESjg1WXMR6LUOajaR5xjtlwWHLLHRcO6PGazIt3Tz8Aul4W1n+JnwY4Tr0AjFQBme/rwQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768178634; c=relaxed/simple;
	bh=j0QICzpaEPlIBFjXaQu/u0CPZE1/r/P19cshzd57gJA=;
	h=To:Subject:From:Message-Id:Date; b=T5zQ/gMzwzQz7WxIAue+Dh0K3Atnm096Ci1BsVLpIejZqIgjUrNmDdp4M+zk+Q4K7wcBxpYaoor3h4DRf+vAcoMP4YZMDcw3X9XCbVoZh4H8jvbUyGMoiNM7So5ki2iV6FTNGQl1Rqg+feG4DlewwMoqlevFCEnL3hwB1T/LxiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLQvBLrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLQvBLrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38DEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768178633;
	bh=j0QICzpaEPlIBFjXaQu/u0CPZE1/r/P19cshzd57gJA=;
	h=To:Subject:From:Date:From;
	b=TLQvBLrmVmQg8fIRH8gBc3w0OxKToQ73uvvsgDrmnb22E2SEFNW/9nCt5gyT4kTCC
	 j2xnBav4qR8pCewVM2+wIg8wQ4lJ4Gotd1UO6BsgmCnoGiYN53AZCKeNOYs/3aTYon
	 E+nEJCOuGBDOi38wqmqXRkhRQATr2g8SRLn2Ujv6RbuUDNCyZOad72exR3amRQrZq+
	 l6UUgYHRYUpjhiVpUlTf3Fe4b1ArNDVK3tvFAQfi3i0w8QGbqb0OGw98DmRgXowqj3
	 rADDO/1eEYn+TnZU80yVPFy2FU5HBQEJtJ81jkP50+CmClMtMIQRG3RDO4xBhoZCeQ
	 e8cijBA8fyTRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9072AD2502E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817863358.2888.1560271766290423555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144a7697e894e551b09ce349694b893a42969d11038ceff5ef8ea4531dbebf57
Date: Mon, 12 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768178633
