Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BABF21B9D5
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742422794; cv=none; b=bWFojTWDPIgLJBuZExMNdqiF7WXOGHc6k/KXvbaKCOTnC9rze+xvuf+GTCRGA3VenF4ZYlig26m69pDI6H8RoE2FGlqIJSGQs0hXs+YZJQ+3yPej943PrUUA9YXBJ0bW+LHDmlIkpsq6+GXYm7609yOWY5i2QsO6H+no1OevPZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742422794; c=relaxed/simple;
	bh=cl8OpylRO0rVIkVtAhOeAoCdwqtOvepm+yAcvC5lGIY=;
	h=To:Subject:From:Message-Id:Date; b=FzCseesiA4KmT18IGpyjwyGC4KFMDUagodPKcMgOTsKwbQReN/sSoHNUXxQ6zpFcAWYOcaUsFtVj6wLWch3yXUQQv5L2wtLaO/Z388VGqr/Xbf2iNSDslp9ZEvpXIiLMOLbs5foEQR4qXYno6SSDOAUZnWAeUGI28oHrEhyUZiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmsVHAzq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmsVHAzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC743C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742422793;
	bh=cl8OpylRO0rVIkVtAhOeAoCdwqtOvepm+yAcvC5lGIY=;
	h=To:Subject:From:Date:From;
	b=MmsVHAzqKUiJb22gMGGGUJqj4ZjYyQ4LTbfiBIHVWa5ARf854o9uD8ViBABqYmBtM
	 TWpUvXuOb+kvvJ8cfD1dAyR1v1Og1TzeZEbAtJxMUHk4HfjMoOd2l8XiVNWAIB8GJb
	 QaFu1uNwHsYgkSnj2qk3435EWTbSO9e5UedaKhY7wxjaBBYKsUNAKfCZ1mmBCpXShl
	 yLyFfyrt/TJNDp0Q2UyMIQ2zmnnVNydgesUnrfFAKHzu6AQrQ+p/mZ+jEYvj8xQzXE
	 n80rQGqcwBm0zv62jjiWNR/cUf2J34CmDMDCO5zbOVyaKy6EpeS0INX9dI6De3wgHr
	 JjGM75YWm7yJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF2AC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174242279364.16022.1473447737702522542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57cea72ab57b4eaf31e4d66aee5e727ff4b2db4a61ac71f1600e98c6c08f7c94
Date: Wed, 19 Mar 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742422793
