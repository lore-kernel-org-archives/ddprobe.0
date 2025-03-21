Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE8F1EA7D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742539794; cv=none; b=cHPwKuCE3l8H755To1Y3nMYUepVV6s7hpsoG8hdzTRKISJF5TuaJy6dmNwwNXLhdIUDdzDnRtVXL7Wgk8iCs9/EmIIK4nkdWpcYcwkESLdtXyOxg74DYmg2Y9lmEuwD7kGVgSsgoE6t1+L1WyLlE0I96Qbl+CxwfgmxqoHT4r1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742539794; c=relaxed/simple;
	bh=rB1q8+C05GQNRuY+rTtJYqYVo4WJTjlKvdW+ggSdGKM=;
	h=To:Subject:From:Message-Id:Date; b=hy/p9OsXkfEPrMDrldCTExFte3I3WoBj595GmsQ1bokM6zTA5Qi3dZG1xnjE0p3YcpQwYkFwQMakAS9V1z97yWTBsLXjsmsuRKE9K6y+unsqbSWa/+gV7rOlMp8r2a3B/T81Oc0tPPw5TtZOd9p/JIStmlOfsr99PjBR+boEBb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nvogum1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nvogum1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC40DC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742539793;
	bh=rB1q8+C05GQNRuY+rTtJYqYVo4WJTjlKvdW+ggSdGKM=;
	h=To:Subject:From:Date:From;
	b=Nvogum1HlJibsZTBHq0xqMfJkSDDbq/Uo3jjzAKHswXgh2wzKLWFSbaIARMR38iFf
	 wB3j93PrSc92YRS3eLX95mTCe/9Zkc1PEogM8Jd96ElJtZe/NZ3iqoKN5YKNYdgZY/
	 e7tmaWb1CEWHbyw2g1dOMcri4qeQ+xvAT5yrlUUWFWxNx8oobp0mssMf1re9tUQnP1
	 Rn29pwm0bLX09HwJ51tev2V/S/CVDZaWa5kxAjedWUMkjkkrtD+wBz0xzTonV66jeh
	 O6VYbYmGK0SsbRfUldb35RwWWqYNVAAJOeD4Cm336kdmV8dvae3GWjTqIe0rFqiydf
	 idLaOJ/Eb0gXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63A0C35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174253979367.19739.17639176013289136267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1dec0b3c2f1753c0a5e72e41f20cc0ea7095cab1c62026cb32d7961ce75991
Date: Fri, 21 Mar 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742539793
