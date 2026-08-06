Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB5B1A682C
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785994834; cv=none; b=ae7al4WMvmfnrUkct/KLx6w36JYhuyUf7OsvPE4PH7mfyx10Y+OkkBd0sPl3rbCXbH7ZMoG++3Kp+9okQETIqmABSujLTWMfSQ7Y65pNt18R8/sr098q1rde7Ih8ZWgRNGZbK41qQlrANI3YQUn1GxyPGSLWA8ovS67VDNvMMfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785994834; c=relaxed/simple;
	bh=Mi3EU0RQ4fto6qkCQ97wDTiZa2JOjEYARdgsUJ+yp6I=;
	h=To:Subject:From:Message-Id:Date; b=oq7CJab7uG6Rr6qcVdXrjYgfLPhdML4nRQRWmCx/isXZdF7M3hoOBnEl/auJNcEfO2Dr/+hxK7FO5SXS/gfxMIOQBJV+SxK7HB4ETxGnFNzIIQ8fbEvZ8tE8KYKBT8luselYQtQ+rkl4APGzKeweut5Yff2otUIgCFmbCoXooGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqHLD0Uu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqHLD0Uu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAE5C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785994833;
	bh=Mi3EU0RQ4fto6qkCQ97wDTiZa2JOjEYARdgsUJ+yp6I=;
	h=To:Subject:From:Date:From;
	b=lqHLD0UuuPopCM/xDg8th2To30lTY1aAeZ0YJy83jAwdfYF+kYYqU9LeXL3F17C34
	 upmN42XBd9o5aCXTyqzz2NLVqhdonQLzxaspYNnwQly9dcdUgfFtkl5dGok8cIbp59
	 n1QXncxEPezEgf9uTATSaQ8hYccq7dTwa14pPgbh8+2gf5RNHXP9ubYweTVXQ4YlTh
	 y/zZBg41uMoI68MJ2yF8EcQQzC9B2C8JVwlZYviTQX5WFqzLczCLZ9HHhNS0KGp6Az
	 Ark6KeDd0jfQ3wd2UHS9oCd1Hy3Kky17dUCAPzRwp1BahfRPqF0x6SdQzwZncCJOFk
	 aSLlN0JVxKuCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8962C55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599483371.8710.17863363381348323860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667401ccba78bb61baeb9dcc4daad8da33841883e2764c3ef20f2dbbd54ddc3e
Date: Thu, 06 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785994833
