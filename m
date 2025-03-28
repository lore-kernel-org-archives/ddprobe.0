Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B89579CF
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743143394; cv=none; b=Rf/BW3cLJho96q4U90F1WpLSQtpyECt5x/j2tK2l0JanmBSZlYVYZoIlviICRufAgunwmFvMXQe9HlWJdsnFTsyiFtUZ5SDc9lKjhCUMqlQuloa/owsN3ZFpdWAcuar+h/SaVIPyiCaOEUmTq+thIP07M5WEqqAghzGIQcqmsT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743143394; c=relaxed/simple;
	bh=Clr52k/NWkf2zzexHj5bROdhdMCyJRf1e0ozHQS5Y6k=;
	h=To:Subject:From:Message-Id:Date; b=Ucpe9QPAjgE1dxEuRV6wCiTwFF0oX2S1FqovhEuAG9bW7WP1LybJI6IynG9gP94cGUSnU3f4bqK4g5L7QdeyHcoQv0OHBPjWNFNgI/drjDiLGlyd1YyPxBgcacFZuELWwkwI4i6kmm9qDbm0ZcGCR5pEMupiAmfEVkoXYXUFpXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSDfaUwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSDfaUwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC97AC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743143393;
	bh=Clr52k/NWkf2zzexHj5bROdhdMCyJRf1e0ozHQS5Y6k=;
	h=To:Subject:From:Date:From;
	b=DSDfaUwxpLZMU6NV8RodqHE5YNl3jfcgjiDhIVQl6f141t0QhfVRuNfkCa2fWK8sC
	 yNva/3qyiONmk9UQ0hTb7dy02DhwkGZ/3wKBQBa1FqPCVNc4xKO6+qbu2iML7TFzxl
	 /4LFqYLRCL+jw2X2zCIdCopx9fmnzgWVjH1tfW9FbRm4BkRgVbLe4y9EZBzMbpC2uZ
	 eOyT/9lKkLjbYjaWP0Jvr1Zl2T3vX8SPftB+oj4pvH5xL6WfXwDeeNyGzaaFaDEs7+
	 Mo+mgHTJ7LhdffYZIg1YaVix292LxWuQ7PVwGM9FLTi5YV3QRuPzQ0Rhix0ONmTqfb
	 JzZqnub9pQQ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A64B6C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314339363.4902.11237893706550515669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 265e63c52992ec28d0e3bbe62d05ca66ac19113d8ecdc7bb0562fc7bfc541c01
Date: Fri, 28 Mar 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743143393
