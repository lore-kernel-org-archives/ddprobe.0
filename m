Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326A8158858
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748056794; cv=none; b=SUbEP/UnR/HlncEoXe731ikX2wzW94wptZJ2qRo+8WTTddSzCWknKP4zICVRqKeX7CJTsudbgeuuAfHeqFUMX6MTb1aTpn5rKhaDhkNaqrlgD46upJmVZI47gs9oOy34gYxPVqGwsz6BnJUCHWp0Rix4LjV+7Uoq/nP2Z4bWg/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748056794; c=relaxed/simple;
	bh=2DKuSVrYTx+7g4hYvjh2sIBcSY5LNV1cPIuODasGQN4=;
	h=To:Subject:From:Message-Id:Date; b=K4hym4/klSgrFFRt15c9CQH/o2a/EXUFcs14fxqu+SilJnkueUwkCf6Vk0HIzB1zOmtNVgy8CTD8vl3QGP/ef/OHIPFlA9FUgZdj/lm/e9oZ0NgkHIsafCF4MeZLk0fA7unwnzDYuWcQYtaV8dfzUxBu4KBEpPsXjjugM5yKoN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5tTIL64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5tTIL64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08F6C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748056793;
	bh=2DKuSVrYTx+7g4hYvjh2sIBcSY5LNV1cPIuODasGQN4=;
	h=To:Subject:From:Date:From;
	b=V5tTIL64kvc+0nrFeddgDgxtSA004sis2gXbBy8U02tnU9rh4hlbCEJoLBsB56XLz
	 /MSQRLW4Z764fGKKLxv/7V0X4FV8x3sH1/dMh9LNmyenc6jCeQh1XkcwSud0s/C9xw
	 7UCZXaR8tAevXej2gZ1BhqZGe624BAAhtgqL5ijAzO3S2inXWnOwkdNAFdqq4kDdRD
	 +glNUfUa9agx/0QchjYYmckulXFYOAKcQyvwzjk+GhSgIidSsPnDBVfxTCLsaYGeC7
	 SoR8VboqTr7mbPLLaCMRYOBMq6B1Lm5Wt2fZoZZg0Y/XBHepNElCxNya/UgAy3jZ62
	 pjCzxJyQZJCCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E62DC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805679357.31717.2671365401784543414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69bc0ab7c29b47f5bbe55001b55cdeb0bb42b349da9fc4d3846f78cf64f40dcf
Date: Sat, 24 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748056793
