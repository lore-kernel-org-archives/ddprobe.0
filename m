Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38604274B3B
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778448034; cv=none; b=OO5Xr9QVNceQUV6fp2mUt9U9ofKaX8TrtvnNYB6BZpP/qT6kELzYVyG5sDo4jmT8OtJuHzVasaKP0ZUjQPhW+7SUkpgeopYZGWcpIuZvmSJhpjJlSWY19xQoqPoEYXLKNivkgCn1UfFb0h8jBm8R4ZocMsXMmBX9Pe5W/aiWXEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778448034; c=relaxed/simple;
	bh=BV0bsEAUAkAFPMkFKltyshDQbXrLO9Ku+lVxlPHx5/g=;
	h=To:Subject:From:Message-Id:Date; b=jMR5r1ErYdkOxAG7X+k4QPFVU+zqpsV5xNn9H/QEppFXc+ijNIrbzEaFMjKRKVkq8TR53eHUf7Pm4Lt83bKqykJdwlW2gOj+qNcqMFx6iwbKUnqrbIOd/q8Bap+Zcl3C2gEYTLVsfoCgXAK/Rz1XUcQ04yxXntUDiz3goVp1LQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YD7CPGSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YD7CPGSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27AFC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778448033;
	bh=BV0bsEAUAkAFPMkFKltyshDQbXrLO9Ku+lVxlPHx5/g=;
	h=To:Subject:From:Date:From;
	b=YD7CPGSoyo0fo+HGu5ZEh5oBN06EssnFF56CjHDNneVohksVc4c9zYagC1m33RI/N
	 36vIa8HzLl9eQ1cLISmvvbKmzFJRJY9gk0yKLUz1r7W42LKkisndmS3xeKDZ1ybFum
	 FpAWhs6lxY8Lbqf/Ckhxkql/4szKzqLPcL/OxlAekdzvB+gIJknMGXVPNKprUkyq2p
	 4yOhCFi5LEkCg4N8xMOI48mUy9ErhU/YIqMQxiTiORxPyMla4608IVSm7DakqfgdEA
	 1wbbl0tgYUQuBazVDKkrMzFFB01Buj9W+CkavzbOrywimbttaDbAUdjN3AIzEUH9Kf
	 uVEJuAdA1GqVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A35CD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844803368.23282.13844459193726688316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2555ccbb4ebd2a2392bec740b2f780a232b68c67123c3cd02f229b1b232aef8d
Date: Sun, 10 May 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778448033
