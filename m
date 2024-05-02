Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C55286BD
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 08:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714637543; cv=none; b=J+gin8LqfzsARKq7yGYziVumlsiXGK8NLU/j/Cy0hKeftL/ZeB/p9h3br6TciETc4kWsIEo10GR84P8VUaiXNt2uDPUNWtzHl4ely6lJjznK2/jHo8DV4hyuYX4cmrMu4J6DuRRraM4j9SfXC9Tl0IjGaA4RvBM6Zx6q8tN59qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714637543; c=relaxed/simple;
	bh=Nuz1Gs98+L65du47Pc/bueVrQzRSIaFjf4jaKYWi/Vs=;
	h=To:Subject:From:Message-Id:Date; b=qC0pzkPvZ21WAX1XxcKsxQULUbTNY8U9BVW0lyEv7ZhT6WHgiq86B0dRZ1+XYfpmBkFi4j/xyiHNzCveMZkR73lVM5+IpIGg2QI/X3Gd9O0sDjNRq65DQyQfNOGpTIyhLmjlPl9E8P1RbSqEHOlTv1B3SV+atqxkgPEVYNj+BN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLgJyDI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLgJyDI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DF4C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 08:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714637542;
	bh=Nuz1Gs98+L65du47Pc/bueVrQzRSIaFjf4jaKYWi/Vs=;
	h=To:Subject:From:Date:From;
	b=TLgJyDI1suu2oRkHqBD6dj+d2Bpei29o14v+BejM7NcF9MlHXr2uiNhxDRXbirXa8
	 HlXq187enV3mqkeFyxG4JKxSjEtKnkGIzaMCPyIyJLiFZpaF+zuTyi4fvUNvWAmXup
	 mj2CtpAiBBzREA23dvKqSRJZ9rHPFIVwUHsI9XgvdclJA3KQMc8RAhGrAijHHWJ8Ix
	 uHblv74oVFG6rKZ9viREiwrqhfDDMrCm1Uxo6jtSg2kF8PJhi1RKetxsZ3F8auFuZX
	 W0N1HfwYGFokWzmKVFrzNdBawHZ7YphBHXE2g4RMTj3ZYO20eOf9yvXTkswX4cg5A6
	 ExVZIdqIzWh6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDBA5C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 08:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171463754276.8246.2507187855523489879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef62d4fae9be8e028a098f4583c4da12a87748db259d7402adf680d162033822
Date: Thu, 02 May 2024 08:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714637542
