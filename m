Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E7712B141
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707994697; cv=none; b=IvelCGgerTSkODmLKEXKxtRQQICYyV+UHZugBHGWfMqQP3bQzq2jL/f+KE7y/AS/5IfveDl0oGKNsGh/pjx61gfbXf3B4vykHBuwbY5V1DLj51u+bYhD/U+7eOhvScnosKXlwP5vqRlUwbS4DEjIAzbYKRI2Qqg6CzvQW2MgcaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707994697; c=relaxed/simple;
	bh=SBOJEsD6k441Rensdr/08efpsn6m/aNpJTJEBedV5AI=;
	h=To:Subject:From:Message-Id:Date; b=MhVnhOGlNIce9it+yegNsArykw82HIaUNCX3oaTaiwS2O7S/T4iDy51bbdPvct4Yxv+Yd1Vim3Xl2wnndXwubhwTgdZfPcmozjr5hRvs3CbnyaWxKGCHcoGP7CrZws/XPKFkKH9e7ia3DLF1XPo09wDKNvAkX2yhKvTAyR2KJqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxrRbCe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxrRbCe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF02C433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707994696;
	bh=SBOJEsD6k441Rensdr/08efpsn6m/aNpJTJEBedV5AI=;
	h=To:Subject:From:Date:From;
	b=IxrRbCe36sCc09n+1722rHZtkmgw1ZjOEIz+tI+3K7e5JWM8J67lopTDSor4ywlZ3
	 JON6XdX39bk+ambHvbh0iJqqIH+WJwFp9lSOszg5lHfUIreGsaBbMxDF5K1hY4804o
	 mgLXK/S6V6MN6+cbpWUjLKuZM/B7TWu9YeRj+uLOLFCwVoY4HDrzp3oQnMW+N0v376
	 VIcNiau7BGNakpJWuPD2QJgvzVDfl3e7QN+iDryC/YP/mW6ZYX0Wv6Fhd53M1OC7Co
	 xFw/8KTA744J9NMC6PhV6TijR0bM0aMhRZo4/y8U1ObVeCCJC0ePQiUc+pZth2JxOZ
	 vSuRTgvjRhnWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C68CC48BEF
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170799469648.13102.4581420193610454292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bff686d7b50bd7bc19f2205b3343c55136fd53b96ed5e3f241e249375038da0
Date: Thu, 15 Feb 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707994696
