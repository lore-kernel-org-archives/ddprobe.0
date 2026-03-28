Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F74F2EAD1B
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774730094; cv=none; b=PoSLUS4rlGPTwPn3iVL/Sn037mjoeZZz4eSfHsS9i5Bm6bbzWWKIQhYkZ/kSshm+l/LstCwZ3/hDBZVeZcoytUvjuxPkCOFCic58O1t8dT9oniEw+BGos8kzlmYgRx970Hz/JgHu6u+YDdBIYmsP0MEYbRT9EsWyu7DLG9TARm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774730094; c=relaxed/simple;
	bh=jWZI4wMu+dgjJEDOrQGHKZf7wIdQTRJFb4lzdl/vPXY=;
	h=To:Subject:From:Message-Id:Date; b=oyQT2uIPSseqVoB9qA067cKdLIR56lv28ZA5IfQto6NfnAF7rOhh0UaoMWNHhLPLF9ieofQYKP9tNAAWX+Leq+KVa2zNRiRRlPzYEVaRcUuV/ohEZ/DF6ZP98n/9jYuQy01fL3TeonZiTtRmME6GFwQ8ZJ8ip7ouduS6M3luT04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upU8DJlc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upU8DJlc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A1CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774730093;
	bh=jWZI4wMu+dgjJEDOrQGHKZf7wIdQTRJFb4lzdl/vPXY=;
	h=To:Subject:From:Date:From;
	b=upU8DJlcD6xRDYNlDjTrDCxTNLR7xJWofPZM816Edr67ERTPh9/lbwLlrVBpajSbR
	 JPCRKPc7LaNMZETrt9jSvxO8Vp5h1nvv80hRrJUYaTqtQTZu3I92t2tNILcDqbnsNj
	 6FRaVjZAF29NNdVFIhT2Mid+VnbAnt9Nw4lKjrofMPec6Dg2vN5z5sdPC9OoJOAx6Q
	 HAotgMzpkBlL+8LZH7cf3Vw4Z6WvnPMHQiX+9+zTJD95xe8lc/k+Sty8wdGzpew96n
	 +oHmP2TjZxEeDa59UcUhuhIUVi0nP+0kaicgaBT9oXpM5gpQo5DRE3GL9d5D93KM02
	 JPUnnHbJudd1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DED10D1481
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473009358.26026.253080972935382082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06812151a5693348042ef588707e1cea8de08ab5ce672228f3882be26fcfe59c
Date: Sat, 28 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774730093
