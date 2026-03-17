Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F1B3F7E9A
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773788094; cv=none; b=OO2L1DoHlpawf0hiNc/4Wtk+/eVe4B4uwwAVfEtDcJi71iZuRmqZR60Us1Rk/RqbkGyii2zWCC7vhCJMKH2DOGasa5e6J0exVy/KIb2S5pgIoDM/fPhRX7qvgW3zzwetYavQDfoLCjTjcCqM2iKB4jLj6TsJNx4QyBShHT7GqRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773788094; c=relaxed/simple;
	bh=r3oGPB0ml3iTZLrYnYFwtTeP+fWI/RK68Z2ZPTJfDD8=;
	h=To:Subject:From:Message-Id:Date; b=HR8KwxiNlllW6ll/dR2L7EcgsOQQjvVZuMXI0oOLuj0sNxzOHz9WxIgljk81XMATJfudUB0i5f7vWICcwUTXsraE1gv5LnTi9GwQL97ChxZiy8Rjm7gshoiLvU40pUw0jMXZxJC2ga3MJSeux26pw8tHQN2SjrRVGp3G/tlZvrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5QmzOFQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5QmzOFQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E489C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773788093;
	bh=r3oGPB0ml3iTZLrYnYFwtTeP+fWI/RK68Z2ZPTJfDD8=;
	h=To:Subject:From:Date:From;
	b=s5QmzOFQC/CVTCT5ZMVyw6Gy71GlIrwP7Luj7zbn7FaGrNd5qUAmSHug+ZcFpv6nJ
	 jgKSS8Aakh02U0nveeeqEGExpFxpmIPySdvJor5STFd62CMw4OnoMuquDmESVu0g5W
	 z2syyiBO15qank6SGuxsrCATdi8L1Jj7bR67UHHfAqbF6P3ZOP3kJdwX2bJAlnAlr7
	 SdAWQNSfQQ/u3s6qnVYsfwQg5p7iHxkwPYVwkhUOdDfyrx0ZZLPmSoCw+Ei+75zy+y
	 ytiJekV3Ato0DLD6MRgkwxO2WSq46zBBhVuxW17Mej8f/e9eT5fysHl+3ZFrf8pQRc
	 3f0jbL7rKWRag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47FFF6E9A
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378809357.31581.894445065966466341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf886a889e1a5118aa9c2fa6894b6f64881d2e0503226307ffb918251e3a941
Date: Tue, 17 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773788093
