Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8D338F642
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790350834; cv=none; b=K948jzSrL5oZgZwvtSCeO1L95zSWQkFHJw3OmUFsggeC8c8N4JE1R4PzPiKqDy8z49KvWp1cF3yE5pB9lGxV/8zXTl3A6MNSb2nuNchv8574Gw5aPMkV666lp10qPT/qqMpWH+/PtJkct4jYGGxXOCBWlPLwimrJn8DyutFo9cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790350834; c=relaxed/simple;
	bh=HCDpFXAPS3BsWUDqrKpR768W/Gxc3nXTklBkrcq7Nsc=;
	h=To:Subject:From:Message-Id:Date; b=s4fhW36C+wYeBtnLl6dVyJvCRFVwgA4K43ew8B99e6V951jTkmG7pTaIECnTuuPYdEkcWJq9lFH2mqlbnWtIf0D2xMPaqB5RdPtl2RSl41gmmI8WroRW0PK+BI2UAws79l9NPGkD/x54rfppQt1D/gC0VsIxuudDFKLekczrtaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPJCr5Y7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPJCr5Y7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC88AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790350833;
	bh=HCDpFXAPS3BsWUDqrKpR768W/Gxc3nXTklBkrcq7Nsc=;
	h=To:Subject:From:Date:From;
	b=FPJCr5Y7MRzKzeJUrx2uO6GYjPor9A5Glcz9bwvKvNUy2/Y+z9S2QGsEIEKPduw0L
	 8DjYXvBCur2RcLNWC9YN3I2oO8NtFztRYaTPfWFD4PeEZ8FHAF7WkQECVZmNXyF+25
	 RJNF2A+KqJs+wb1dg6F8s3/zHR74ivvV1bhnktcKsxClHfNM60eX2wOsgKdLlViMsk
	 XxmunmbFnfRdiASX4MYDHC2Fn/gWcPIVzafHqAyJ4GnydthS/Yty1f2XZCaKdTSD+w
	 R6ynH/PMAsxp2dCx8mYuqDgcCShw4bOOlkdgeqKZlSTUuwoRaX861KNHvaZQwtvCTJ
	 a2pMaZ1grxBHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6E7C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035083368.18087.6498882513984604122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a90f3049fa87a5bcfebc4000f047211de8aa6ca09447bed552c6f87cad43d463
Date: Fri, 25 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790350833
