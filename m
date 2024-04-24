Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719F01CFB9
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 19:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713985283; cv=none; b=ZeEygmSM61vRjF+X7X/LIsYLPM4f5PGxYppVXTXa9ygYfqyX5tcR2NvF81OLZRwhO2zC2n5lVP35wQjVucrz7QUB7FGP7+zCs+bXCnP4l6c4PxGodKtUtrEjYfClU5NaOrktUCt9FlUVKuEpkPxDUbzX9YRWGyvr6W07iU2cIDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713985283; c=relaxed/simple;
	bh=X/XdtGg1PGuEsMuicOZcQ4vQsOhqxs6nweLDsmIMrnQ=;
	h=To:Subject:From:Message-Id:Date; b=GcNpqt6jWx6YsjBR6s71+L7fnnVWnrLrdEgTm88pCr4c6kXpYKR/1ZN/H0mxFSf0Y6SCxF8aj9ElsvypIVK4sD4659nc9ZiV60KQVd8GIC/hBYg/CZwSZiC8SGiguIKUIed0eKBanvUPXBlRq8XZ4m9KxbRYFCsF8ldV9cvSYac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxLFvy8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxLFvy8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFCC3C3277B
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 19:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713985282;
	bh=X/XdtGg1PGuEsMuicOZcQ4vQsOhqxs6nweLDsmIMrnQ=;
	h=To:Subject:From:Date:From;
	b=DxLFvy8vrKRPg4E0nf0n6+vnNqw8FfwpeyAlaY10xEDHxJ1BwEp+c41lnIUKK3+ul
	 n0UKiWzxk7Vs4JXDan9Nzyo0jnqen2NviV7RJ5vdzJUuxg4UvM27xFm/Lvlk8VuoxJ
	 pgE9fl6c3M4OFbiO1nRKnv3fEP/Qw9a5qdsLUGwVODSMepdCSNeKx+yYAOnL0PqtFI
	 WYWHnhO4CAYn0Ds33yY/Ips0q937VK/DYB1uYyBmNwTLaXqPziFJDJhl+RQartlsK3
	 m+OI9GX5epEhWR2E6OyZt4FaFKTqJ92l3soY7t86lbjK7ebI3Co25xlbW5Qxb5g9po
	 LaRb8Xb1A0LQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6ABBC10F15
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 19:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171398528280.18381.13622208026227956102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03cbec9ddcbde044fd93e31ea6ce324a508338c911b53581cbfffcc1d6b99ca
Date: Wed, 24 Apr 2024 19:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713985282
