Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE3E13A244
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765130574; cv=none; b=FH9+9fwpr71OZok9VTv2dngKU7jR66ReBz57MqWf55muhyV4D/9tG6drmyHR/XmIMLoqFAlbJKd39Rzq2YSSkZVvjvDch4XrL9owfW/cfYnTBTeX7iGAMpLxk/89kxuCktNgzt+Ki9oUH9rfrro5SoLLL3ExaVdpvqO2cG9Yiq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765130574; c=relaxed/simple;
	bh=zVLMPgLxhny7prQFxR7kSwqsxx+uOfe4U5xwk8YF4/Q=;
	h=To:Subject:From:Message-Id:Date; b=gLP6cSfwODOIzMFI4GKCjYgw+mUFnnWMrYLpZ4i0QIoV/yYQCRUmmgH4v1IeDXTv5PnHu409pP2I4xVCcBAVGL0Tp4nfXa8POJqEtQYaP2UwrVipUH04ucI0he2/2B+GyUdmhr5OARzYKqybiLCTMNGaySta8h7f4Lv4nHWaJCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9BsqavQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9BsqavQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE8AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765130573;
	bh=zVLMPgLxhny7prQFxR7kSwqsxx+uOfe4U5xwk8YF4/Q=;
	h=To:Subject:From:Date:From;
	b=f9BsqavQA1Anw55szSpSWr8OdtvGhMHcvN7L1xEt0mIswmrlv5eT5WPzvdtey9Gbu
	 fYzT//2o5aJVmQdZWIW7ZLwRAw9AQn6xXV/qpBnWZrCCohaTd6Lu+A6mpSKQl/JG0G
	 GGzJInAJpOEF+Zw6rQRmhVZZb/VHn2DqWC1dmFRRzRkeV2+AEO3+fCQQtYGtDy7wYQ
	 mz1DzkjfMQgCwDcqx5H1UKXP3UpOOUG63ZVB5hgwr3hloyyTM7pKjE4uBIZ/d93boy
	 wL022vENzkICaxYFZfHEBF1qsNcjZHQA0M2lj6/MZmb1ONJkNUvVH1iafTb5LdCco3
	 P9LS9Ky/bmeXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FD1D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513057359.10646.10696676362977095417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84792b70ee923bf29de993c0716ab52c5af9ea580f3d2151c63a0759a2673618
Date: Sun, 07 Dec 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765130573
