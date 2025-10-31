Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2168A33DEE9
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761905994; cv=none; b=eUTtQ2XruT3dUhx6C7Vtmw4gC2cCBxp9s76sgNjxm0MBaIHIqbFaFsGg1KTd70bpWCvTPwD8XGw2vBpOfnI8HvwCT/EIn9xauWQd5lhFhkDSQpieHyTv1+cWmhu//m2cZntcwFF5VIl0mquYxE2A6qTm3D2a29L+vXjXF6UdlMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761905994; c=relaxed/simple;
	bh=jTFzWHImo6f4QCiW3QFUfOL6WDKkVgh45erbzh4pAf8=;
	h=To:Subject:From:Message-Id:Date; b=DUezDjUPdEZwui8WnyWTkFKdxRoWBsJV96AsdLpPG8waRa2HMYMVVnKtCvBnvWFlaAkPxrX3JDfSR3OUvm+qm7ZN5A5AU+et25STiiEt3b0uowBFJAH0nG5MRJeB4v19yCDHuuIuycpOFIq6XMJ4LkuXGuEB7Y+KjcPgnHQsu7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ng+d/82t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ng+d/82t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A625CC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761905993;
	bh=jTFzWHImo6f4QCiW3QFUfOL6WDKkVgh45erbzh4pAf8=;
	h=To:Subject:From:Date:From;
	b=Ng+d/82t1xKq1Pvy/hKpc7rk8drtRhIWMbgfK5W45RgWcvYfGDLvcf+Kuwpgoq8TD
	 mCFF//iZVSGgRoqTCq3fqcqtWO+aQUqBGwQ3QlfKPGih+WccGovhSuklVdTKoP/fb7
	 Hqwltsk570sZYWqjJWHhm47P4ZvmBMNt//Jl59jvENVYBjCXz+EQEtg4DB0PwStCkX
	 yOQLi41HwJijUv3CxwcArtuD95yOjxQpE0Y21y71IdVNnJQljfno9qNFuDoN4RSorf
	 hv9AITRyqnCKOxBQKiGjtYdduwftMkS4hkkxNmnnURE+CgA4mDcm0rObf92FaMNXdL
	 H5yXOjPPx0/rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91452CCF9FA
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190599358.19174.10838793418887997078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b9601320c796e3ef0ff033ef8f5865259958022a74859ec5a31631427aae31
Date: Fri, 31 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761905993
