Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F581E1DEB
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743195594; cv=none; b=X6HUG4rRPKek2Nqt244pQ5DS7Nw6Vy4GdpXnHfiG6We0dVvqjY6r4t4PD6Zgq1AOmJaKqsOuS9EF1s2DxEJshCrkllspFhyLHXA4KLqeZB7DD1MdsFpKxqUG7UfhY79Tf2TFKQeeCOGiJD9/5PE1jm9Jbqm+C580/miAKyJ7lzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743195594; c=relaxed/simple;
	bh=YPAMgh0Ds3wy/eIvpLgpWJeneo0F8P1wXKUkelnh01U=;
	h=To:Subject:From:Message-Id:Date; b=S0x2PGHN124ecN2Qy3dzv9f5119D65E29n/BbXfyXYm/pRDuwFppw8pElWPWBYMc+6X9Edm4yC2/sGWBHot+abMH/8t0D65OF0fy4Ocjz4z9DEgYJX058sGxV2BIPe6LVrqHMNjFNlZXupmykkesa/nQpTR674Hm4/ZKhayuzm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkkd8Rn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkkd8Rn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEB4C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743195593;
	bh=YPAMgh0Ds3wy/eIvpLgpWJeneo0F8P1wXKUkelnh01U=;
	h=To:Subject:From:Date:From;
	b=mkkd8Rn/1H3zVmvmcDzSfO792oO95UnSDEJK7yy1mTRCVXRULKQGSwOkU/cAZAiqA
	 itrHiXWu3A41kcrbHaXwYhk1GrXq4SzH8Rj2ZKya1/GIke+Kk17w6oMLTZfJ/bAIk6
	 diLO09+y2cjD9aQNm+vmo46yXaCMBYA7YNNSAswtoXvZrS7sCqlwocb2hkuMf13/hP
	 ItgQgtNx4rAxHFqPvp7lMENt01IowJ9+ed9STTOHaduh+Qd5Rn+ODDBsHQ6U2YQ8mN
	 9IFOHEKcpnu22q/RWI27daT9flcndOsxvrzSAO6NVyk5KkNt/3XYoFyLyCWjgp3cW9
	 Gm6HY5obVBkBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94705C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319559358.2714.4052172568401259062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dbecf09463c17474fc613aa4c5d125ead673cd6660e6c243050deedb28c4421
Date: Fri, 28 Mar 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743195593
