Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10678373C18
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773868494; cv=none; b=svIt9Q4Te2psZR0/PNEWVT4qq7vLCNIjl0SGBikHGMA2v7//K6+GLEHuO0JFGZPuXOA6SKi/NdfJJuX7Gxa6EqiZjYdzrI86HDGBOxg49PkIgXhhxvh02VuC+b4XkeW7Is2BQ9LG14T5nsZtYcwlm/uHtqjV9lOZ//3VwFeh01A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773868494; c=relaxed/simple;
	bh=8Mq9ZbEEeRUJJkq/Lk5n25/jg4SJRPoP06d/+pSjOHM=;
	h=To:Subject:From:Message-Id:Date; b=hzOU3DOJJJn4HHX/9lppR02LvLV/LhCdmEJ9b7ZfbyrJufJbRI/PpXrfIErXiDjh15gC045LLgBFJEB3gFYouLQYbOt8vI1i5EbT6OBVWM+5DKjYcBhdRHG7fMc3Aff4HgeoUQR/9zOPKzEZDVkcoQZ8iEKuloJYRoVrQXFDJIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZC1VDHsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZC1VDHsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27CBC19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773868493;
	bh=8Mq9ZbEEeRUJJkq/Lk5n25/jg4SJRPoP06d/+pSjOHM=;
	h=To:Subject:From:Date:From;
	b=ZC1VDHsraf6aXJ6OoGlor0dNuBgNsAwDpTfjUJ15RniOwA994GfDrK8ZGo3OtKooV
	 zedKPRoxLjGV3Vxka69qwqfpLFTyLJV7DfKKS2OLejF2UVIloOw2Vy4RWtzbMaR7tD
	 CP3psQ6B/1VM3aLsaEfbroPxOoVAtWsDcUp1rKrqw/wDdljr0eNL7AqD6t0kaA5Wah
	 +Lh+yW5oivLINYd5hEV5RJWB3ZARRfFwSq7j94fEJLHd2CHxL6WEGAvIKm8A4R+V1i
	 gdXbhJX/Bp+ki8NywRKgwHGPvDZnuRnodO3Xg6rdj0WpwB7KNByxN7NfLkP6HUeMc6
	 hYjH9QfDuS/eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905AD107761B
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386849358.10641.17791782435396611080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333d7b2ed0543286f41544fc8508de7ee6f2a37d44634e6004b8d8db90003174
Date: Wed, 18 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773868493
