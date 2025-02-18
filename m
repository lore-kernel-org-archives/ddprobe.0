Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384C01B0421
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 05:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739857734; cv=none; b=TT7TblMl7KG4Yag3Mo0/A8kVBOmkXR9+tMt7u/sxtgiCdHmanSpjG+kfNyLY7tCdi+0Jb8H9SkwqPP+A2i76jC5kdMWk7MtUSErwps3+wGjGX1yGNyCV3MGMFf6mhneFM25nJNbbk7RgQhtU7bS2T+5Pjdc/C2h4pw1veB+fbgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739857734; c=relaxed/simple;
	bh=nx0uqboPWF5DNj8qyv4M63+3qRmrgOH4O9HxBJjkVH8=;
	h=To:Subject:From:Message-Id:Date; b=qfBUCw57Uszt9EoxpfZybjcxcsUPoqNr/Erx8CS8c/K7w622mTKFdxK78zM3jzzTwAe6dvdi3UKK715TwfMIT2724RlVD2Mgq4c+vWLGXAfXzhbQoY5i0TegGeA+WUutYUWkTZ8/btiUnHsCdjIahEiNmQXCU4H1w9gKOR/2G74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9v6oS9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9v6oS9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5633C4CEE6
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 05:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739857733;
	bh=nx0uqboPWF5DNj8qyv4M63+3qRmrgOH4O9HxBJjkVH8=;
	h=To:Subject:From:Date:From;
	b=Y9v6oS9Gu4yu6a2kSlvyVoCtQ18Uq/V+zpP0tdx4vUYZxpQ7ZOD/SvLCEDZTt5HI9
	 ERqcwlvi7Nc+1e3QpeF4sVbFY1AGBPKnv9mP7k8+uqzrddnHBiquF04hUMPVlmp0WJ
	 HdF3vK0JDYPpj38H15u5vRYDaaTQtSGapkVpc1bBc/QiB3NsJ6TrMrfMqX8hkIqf2o
	 7vl/5FHlgfrLFdqkBBw2B+Xx/70S3eF4c/oeXFxvwVEOWNV50G0DmIfL+fSw0QTG5f
	 IZwCDKTtYeg9flTsa+3R32qF+k6UjphpshL7MltRahHsorc3uarRTC2JWwWBcHMDDo
	 v3113ZpNhPfDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92481C021A9
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 05:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173985773358.30377.5180687573513779522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27289a95d0a7abe48ef9445281bb3225eaacc85e4d538bb0d2b946fa73a7de7
Date: Tue, 18 Feb 2025 05:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739857733
