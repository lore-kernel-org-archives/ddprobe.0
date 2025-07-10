Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357B4270ECD
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752178794; cv=none; b=Z8WnFo1Hc1jmyuzD2XR/8QqevZ9v+nQulgPIwgGQ5IHQDKtSpu4ncyqeIAjGpXypde5WWyjF1fxHXwN+wSlil8DAftdsJncmAack9o6viOT87cPmoYWTIrjOtLx3R+t0EG5zTKctgLIqwNxjp8Xye2oNuuyyQGx0m1MBIHN73Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752178794; c=relaxed/simple;
	bh=C0QkVVs3u3mybcCgIKfSH2QVyVLhL8yjR06fX1mDPHM=;
	h=To:Subject:From:Message-Id:Date; b=YgdqzSCQF6FwW3QxB7DA6JDDd1boPq2S22q2rCs3XDUsHUvBvxRiqyo5jLXBkJTUnureCOeGiuhU/oObZO2Y0nMUNuGOVhXmnYw2NbprHGjl9cRuNe9e7j0QaaD4OgJXr6xUoUd4Wkswk8VKD9AmsfWGPlGygcIVmvLm+ZZZpYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeNpYywK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeNpYywK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CAFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752178793;
	bh=C0QkVVs3u3mybcCgIKfSH2QVyVLhL8yjR06fX1mDPHM=;
	h=To:Subject:From:Date:From;
	b=SeNpYywKbQYrEnKpghSZcS7+oB/giqbiJfbgxjYHYg8Ht6jEA4tWl7Zee3EwC/dBw
	 LlOd4HLJKMCOpEJhfDkkDAWKoFJkzmpvpySqkVxEUA84YfmZ5Rj3ztwwwFPgwk3iRj
	 c8oRa+VepPBvDJ1KeZRYnEf5jtf+5VOrwyPTzm/3nd6tjOAVmRxuAnSZXVjZiLTs9z
	 7oCps6/SdXChI2Os5CArNsJ3YelFYXHyeSlyF2rpAHfkwjX7TNPjG1bkpOuZ8aaf50
	 BN7YajAB67ygeT0C+Gi7e2e0uCUk0gTqR5Ryrj/p49MOcUoxZjXkmaGZP1iW3bGYKo
	 Ol39MNTIsWlug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950D2C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217879358.14021.6950033813111816426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de709b871c90c01fd852f61524439654d472716715db2b3c3b8d08b9177f6547
Date: Thu, 10 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752178793
