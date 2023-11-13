Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E342D627
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRL1jfxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B6AFC433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699913296;
	bh=ouXzQXl5cPRvBePzg2FthsgiI47LeAn5uN54P6GXmGQ=;
	h=To:Subject:From:Date:From;
	b=gRL1jfxPUMdRmBsDf2EhywGHdKIRPBub60ck++VpEak+xkuljqZK96K0e/MwKcyKR
	 Tvovid5dhumk/GJ2vcOz5e+G/yE9DbsYYtYlRm4MNqbeH9n0qJ9ofLdICVIepA5cxB
	 +IGh2e9K4JabbTg/XU5Z4gFT+Qb8Jdx/dRqfzsq2xybkt0vBzUgU8R+qixJ2F/Tqau
	 PdE6M++1/1Z38N0j3U3tYfAB7xbSf6P7Dz4MJ5QKEBDdf69YF9thvn1n02BDHIGh+F
	 gYkvZWNMoeV6u24yhZuZNUteS2krFf4wMCN1wWgLnkrkT2bnceJLaZcCa7hXyOeiMO
	 EJq/E7Aidy+Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68E99C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169991329640.9728.1810591749390809827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc9072751087de2ddc814e42937e616cfc5a86c5aa8382ea68621f383f81271
Date: Mon, 13 Nov 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699913296
