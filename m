Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79181FDA7B
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755439793; cv=none; b=UgTNKVdD4qPp9s08VSaPyKdPGJgKAXrRVpPTFxAx0vvLhQStotZYQ1CXPxMrDtCKL+wFkXi0WRvqVXy4a+Y1SKh1VaW8/o0ZPT5z7WDdtFoOlh+luTYKTAL6L+JRpn28CcwBdrRRXR3WGTP7r/KlA1LULI2cjX6D4GCarT3jxOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755439793; c=relaxed/simple;
	bh=QaWIToCJOBAwV2r147BTVmd2T1Q/yUVtZk6InjyqLMk=;
	h=To:Subject:From:Message-Id:Date; b=T7Pr+T8r7fzteQ9/PVfXZf00++Q7GBfZ3LcCZFcCfkq0cPJ0zqdUlY9l0hd4oQKJnx89K+j6H/yxmXiTDG5sTXfcp3dBlKlZL+H6IU+JVuOzKm0oLs8fb0HOQ7Sexh92efD/RkRGCUZYgO4NMtzUUdPwuwW9T/eU1kqkr4I8d6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvnVH5S+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvnVH5S+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4553C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755439793;
	bh=QaWIToCJOBAwV2r147BTVmd2T1Q/yUVtZk6InjyqLMk=;
	h=To:Subject:From:Date:From;
	b=tvnVH5S+vHM5rNrkyOJlhP0Q0PddZM2ZGywGp2QQuwM6tk6WPDyFxLFVqbZ0nskdp
	 p7gp17U1hyvjpE9goo3q62g+f2z1Ypa40uFXNFzozMbLhvxiKXftksvc6eSTlYl4Tg
	 URW3mJURWRFhjuzv8mQ3i4MPgdO8sPSZCy1VEJUpdDgzunVFORVUClWZmpvwnVa2wA
	 eitnhFe5SORf8Qc15UN/zbY8PFBRIaScuHfgFYl8wp8igbwbTzqANm6FBZ1/zQmBiF
	 OYe32xyNv2SRxp78qP3DXPAaVsojJFrZHe6UrvbZNuySKZJyuDBLWlnHDcJXikgsEA
	 Rmo28/2nlg00w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926EFCA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543979357.25354.7373625895700311356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb00503f6adf51961f8145627783cca53e0ec805a50a5e74eb42b2583b86753
Date: Sun, 17 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755439793
