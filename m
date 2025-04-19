Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A5E78F3E
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745081994; cv=none; b=ZVOnfq5R3PlG87xKKuDzVoOiACI/XgGOfTpQAc01Opsa6AtGP1kT5N9Gz96Gd7K49Kp0c7U5N6i5zLslJgXKWx7NPI9Xpcg+gvOoa0C0O5DAdyZalBy3m6eoxo6B7uESI/AC6cXtfmrMHKv/CFjkWCUvN+YBwJyLYkdQ6L+sYMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745081994; c=relaxed/simple;
	bh=P2ka460GVleQdt0sUGSBC93uVasBagBwJUyFcjAcwAg=;
	h=To:Subject:From:Message-Id:Date; b=K6GXN0oHr9C4U+BcS/Bv3Z9YJrJndK0D3sX7t24BbXyGeoT5PwhUY0U1EUFZRXxAu5bropXQnBvDZRaG9Axj7bd2E/Z2zH5Q5GhNbLSxVczIk9hCSGTrAkJreEr/sbGMkIit9JHrYkOMHFzP6e0aPeHP55seNoNue+Zvb2/1KT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvjJf1a5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvjJf1a5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E03C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745081993;
	bh=P2ka460GVleQdt0sUGSBC93uVasBagBwJUyFcjAcwAg=;
	h=To:Subject:From:Date:From;
	b=tvjJf1a5Q5JiiJfyZMthS20X0yRUXHctbY7VOaCtQAb+s75M8LP4mhSrbVjyjTek8
	 OJVVLXpS0E+QiPCfVMT1Qv2Uo7NIzoJnZyW4eiJVXBc4b6NLz46U3mCr09wM+e5e2k
	 4zYbYnOmeSJWt9SRK4mUv8sCZ156Oq90yHeuqDappM6Pu3rzYtqVWEf4eP2jXnubC4
	 TazVUrNCcELF7D1J7z5Oy20kiSesaVO7zwRZw7d1ucvYMPU7OnThwQ0MEa4YeKvPED
	 P9fSSl/VkF1Oh3o2r5w1DSUyw9WpADXQMZfm8PXrmpGhLBj6G/+B1HQJfGMfYFX5F6
	 9XDkm02JFxrig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BA0C369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508199360.24455.18213249484576594461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df56f94637500da4706c222fceeccd23e42170efaf7eecd97cbc4eb8b5681459
Date: Sat, 19 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745081993
