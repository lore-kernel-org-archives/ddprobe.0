Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524FE40BF5
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743452395; cv=none; b=npOh3tK8CZ7bBleb1MrVoDcVmZqGJGdMLQG/XGARaJv+zOGUT7Pt8XUjooWyF550fcZ/Y6lhUQL0WzKpOPFar6O/lqyXS4A44M7k0AOgSqtxyT3JoJxH35ltt7wD9Zs4RUzaJ2Kl5BPrBMU3iQGrL4yFo+pV80ZrEP2gslz6aGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743452395; c=relaxed/simple;
	bh=d/LBOwGBm8dXD16/j4g5tpW3wp4AukNLFwV0C+TqK9o=;
	h=To:Subject:From:Message-Id:Date; b=W124Y3/rd8hpgMRQTdwfsnlYqDi+Gzao/vlBkKDHUgIrX9lyMMWxQuE7mfkVtJA1nTCiL2De1c8S2uNmntmkXiBB+hcJNG38TnC508xeNfnmyl0f4qb/9+rN9kDyybMXYqq7Ns3lnhK0fs7DNIJWBruqxLU1iDQ9KXeDq3qFVSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDmbkG4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDmbkG4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F8CC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743452393;
	bh=d/LBOwGBm8dXD16/j4g5tpW3wp4AukNLFwV0C+TqK9o=;
	h=To:Subject:From:Date:From;
	b=KDmbkG4S9kbLTv+qbz5VnQqIJ4pbj2ZPtNGmGgpPqBv0XOhsoXGlWxYUCIvOfYe2r
	 +U4sibqZXegNt/zW01/kgHcbvMjl3FK8njyUOQTRChLFElr5x+i2lywfoYsMZ9+AGP
	 nrwT/69krCapZNAl+Zcv3S/jO/98lJEamyZ2IUYPHD4aa2lnnZKSI1UAIFGk/WsW7s
	 ZHKlm3wJs/iSKTYj5S53vgpW5IVV5UaB6Nu0MXJEDKaOkMkjGYg/1rKst1sb9UEg+f
	 zDgYfij8NI57NmpkqKs3JxkJg+7ewGlh2AwjsaedZd5dXlxSxnTT5YSGc2YuYdM5EQ
	 D+gwZqBOmMQ+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8E8C36014
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174345239363.29240.6522638677687643030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5278865f8affde920eb0976a18846ff176e7db96844890d024260a8f8f3bd06
Date: Mon, 31 Mar 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743452393
