Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303A5161
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732579554; cv=none; b=Lz3zhX0stIaK0qyJ4cmJkXA6rL9+VgKNV5HbR4sLk0cW3HpDgKoPhaA6IfIo3kiJ1Icb2CmMBf/7xF3dxk4yXIrQ0yonwZmExn3f+FpqaFsynRSZdVw6aCTYzQ5NY3X5fHgbJOJL67/iEQOEWAyblxhJKWMAT4ntSQFRUcAP9A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732579554; c=relaxed/simple;
	bh=Z+UfVCScip2ueuxAtEDQBn0u54PtN08quWxl6E/LfjQ=;
	h=To:Subject:From:Message-Id:Date; b=Ne3TFjErKmbRnv7AInsQbbkAqXagDDkVRaNNrZvyiGOj3T6eI4wDwhBzw2h8h1wWs0PAVhc9LYtHsJOw1RHIk3Q6FGTVmb0vVsNl14tt3AehY1Gf1Q8OHVxQuN/JwEL0V1uuN99jmqmzB6T6w6Ql0+bHjdx34+xd0eJtb+LDQpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3foTNgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3foTNgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6146C4CECE
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732579553;
	bh=Z+UfVCScip2ueuxAtEDQBn0u54PtN08quWxl6E/LfjQ=;
	h=To:Subject:From:Date:From;
	b=K3foTNgZ1xcRIwolkoDXn7DgrnSRCxX/5fVED4485fh2U0pHwFnTm7M+O/kD4nH0i
	 Co+cywCFinBBNTKDAGVzL6efBjZSZZGUpvBP7XhARzqP3LvM6QEjHzxQRU5gNM8OOP
	 mG1pyuG7hS0fxffulChpouwdMMX+kxk10bJaet9Rl6SagZOYyF7Gm7QO70OSDbsvea
	 ux0bVdJyFYo96b0Gk1s1wRkwqhdu7xqpJUE6zTzXfdDkENT+9Eg3shtcBrQep8U5Gy
	 VhQrCh1Y4Pgqn3BENfQMF0zsiGZmOR/S5KK3lYaAfS2mCLsGxn5rt25BzfU1QiXP7/
	 5/39oGCmo+nLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9286ED59D7F
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173257955359.23442.3045263782411291071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07ac94714dfde58a41afe771f8aa5a85cac77a4dd3c5960977974001668994b
Date: Tue, 26 Nov 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732579553
