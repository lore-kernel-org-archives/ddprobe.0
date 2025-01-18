Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAD74F5E0
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737180954; cv=none; b=jwvoPI/Hqy33Qj1Y2WamWs66eB6wFyYhCGrgIeABOjb7tv8fncrUWvLAunp2T1y9bGjkamwTJ09AlT5kCw3/OG/H7Um7/pXtFvdz50KUrNspe/x3EcX7BOaV7gh5LVrQCnJkDwowjjfqPmDLYx4CidmcdHbYZPFnot6XOeFy7UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737180954; c=relaxed/simple;
	bh=wm7D/x4NoLA69M1rrYdDxX7cur6lEJiQsAqHHaelR7c=;
	h=To:Subject:From:Message-Id:Date; b=fQvX9wWlsPjGWK5f0NrTMzxB4P2GAWvM7Ow5jePCn1R8CAHdSrhTCVafl0pqQjZKz2B82osNTSEZWooYxcZVyH9diIQZTHkcRf25paPW13NwrRJxxt9y7ZDPdoD4PDnRRrMU9jMh1JD+7cvVt9ctmSxbe+ojGv2lLlb3/cw1Zf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fggDEbIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fggDEbIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A762DC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737180953;
	bh=wm7D/x4NoLA69M1rrYdDxX7cur6lEJiQsAqHHaelR7c=;
	h=To:Subject:From:Date:From;
	b=fggDEbIuyZqhCxdn/O5zz9msjfGHnvFjhy0LBuBlEZHNwY2n3hc2SSoC5DM+64WHs
	 OCQOW8cxePIVDODCToJ/fc+wZ0WsllLQWdKIEis1kvaPVAnaUujc1u7wJzWLBXfLQR
	 xcWv62eqI9N3JpW6dP/FBDiNyKmbvcPgSP+adGSjJfTb5sLyVVJBf7I9LNFybvX6Uh
	 crn/muM91aR/QwbWRP7wy6TP+x+gFzPxSND8tkJdc2Ju1J2hdgcIukagt5n6Dgpabx
	 tfqBs9ZMPFoXofXRkdpuWrMmHSxWUgxn1yv0/7p62BesRdNDrp/s+YVzRn4lu0K+Yw
	 MJg0YE7bqjYeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917D3C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173718095358.3218.3244831254907083350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a776f0540599583acc24680f1de13822c3907365e83cc212d8fedd6f2b1f01d1
Date: Sat, 18 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737180953
