Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D30710E5
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752445794; cv=none; b=GbwWLDcsu9VHoE09LPMHZHpAPGCW+5K7KpcP7ooa1wlkpetXNVfm/coZqZOyMyAj9eqMzNhbTEUAPeqh5GuR8USQcTT4E3k8F2I2AyqLZ5t9OLEXdbZcBGa+4x3eGjrGSy8mx7IDwxiwaQVR9ymyr3zoIqpr7hDggYKYFjtUd8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752445794; c=relaxed/simple;
	bh=4FNrD5rbU2LQp6QiCDYTnD0tPXQ0ru1bQ23rpHzE56I=;
	h=To:Subject:From:Message-Id:Date; b=Veu3rUcb3v/LfMrkw/A40//xnkDPo1Vt6/qhc62PB/aL9fnEY3yKh8+xkN0j3E393dSC/urEgmdZrpMXdIwju3fhjJTuWtj8LrZ/twMcimci6uHRWNU8lbjuy66lciKs3vmwHol3kA3osgW6BG/Q5Wbc61qP+FPa9oT5+ZAP0aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/0CJgDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/0CJgDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2124C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752445793;
	bh=4FNrD5rbU2LQp6QiCDYTnD0tPXQ0ru1bQ23rpHzE56I=;
	h=To:Subject:From:Date:From;
	b=J/0CJgDyIdUv4NHnG6s4bcMyTUBiph3WHHcexGDiX84+QBv7Y6pA4UZxAqO22UH/P
	 yG3rDnVqNUhapiZLdnWTJO5V21d6hyfy0pK4eTvLrsC0iciHP8Ms1FzuB7YmIt9mTL
	 RMEIBvYPl9E0rfnfan20m8uRi08lYLpzgDTiZ+UxuqZRI5OIthmxd1Yku++KyvxBc3
	 qwUSDb0yvIaw3WOj7bSnsAb0PXGIRXsV3nvc0Qg1zHVVNmKe6xO0N87j1XYjfhFbgQ
	 SoblBhED4nr+xVmVGILDzpamMLq+EI7o/3v6j55uthLDXmAiw9hH91I64hN5aK6LnC
	 15JgjF+1HqQmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57DC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244579357.20923.17096551029331001351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b442a9f141d01d628730686c4231089712b9d31170a05b49cfde249864aaa8d
Date: Sun, 13 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752445793
