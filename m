Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F2A1CAA92
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749287394; cv=none; b=gwUhLflXyKpLxR2umwBm1rx+ITXfgyy6ZAghZUFnPyVbxdpIy2ZEeAQATAP+3R/Yfs2ignM56g7h1778TwDQhnUkePWduB1uKsTRywMf9pIT0yGpDmYBvygKaKafd7921fGTbjXvV+mei8GotNpFC3O/WsE3bD79XS6v+mveR2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749287394; c=relaxed/simple;
	bh=1yJkXr0HlAT1dt3m0GT0cq8s12nPk+RHLYIrK5fPvp4=;
	h=To:Subject:From:Message-Id:Date; b=Ig6A6r7xZiU2xkE7s08kTAD2AhI4pSZFHl4vDIh9c95jB1J8RSbGy/85bHjzfp+e8EvP06m1JZ9wiZeYXjxFlfeop8EaukfBa/zX2EPQK6FELvgncUxPkO95lipnBobxyR7nNvufxv57V6Q+Kl7OD4hQSO6C1qOJqRulpX5pJtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdnkrNd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdnkrNd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70BDC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749287393;
	bh=1yJkXr0HlAT1dt3m0GT0cq8s12nPk+RHLYIrK5fPvp4=;
	h=To:Subject:From:Date:From;
	b=FdnkrNd4XT0GmdY1/LVo3KPH7gzU2vgJNCB53lJnE9lIBVa6r44YREWcHRWRZYMqS
	 zd5a37onIE0Nx6v43zH+SxXnXg55snU3qTMnnMhzkjEstmjFiBZ2/j2h2zvibW93od
	 mV34s/WJ+KdDYccjRbx0NDvKo/+VyIsjr95fp/zyl0a5Yjom8V8fxzKcO+p8i29KpB
	 Rd3OJpkgmNv63m4v9MFPNmfbLY91Hu7L193VH6KfKy5/RFovgowf3qf/ZKOO4PeZ11
	 aJrZdiWeZEuB3nAFMaRe9GokMqYyMV0x/O3T1hF7vrbrip4Y9R1k5Quj3U7S0oY1rX
	 tmAhR7GiSfn8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92110C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928739357.22110.6610505306255914634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b8f3b0fe1ccb5948892814e897d5e2e7a62a9c21b62634b427c310f7799fbc
Date: Sat, 07 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749287393
