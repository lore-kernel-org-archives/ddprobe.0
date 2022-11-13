Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F1E6FC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70638C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668368454;
	bh=sdzEBeANcYUQC+033F1kUQc0qAlk6UBwzR4eASYY+wU=;
	h=To:Subject:From:Date:From;
	b=sASSsgV4Ti/94eqrGo14HoppHD3Ph3kcBEkHWATTxW0Ws+mQEyTBGsLbwGQZt+BF4
	 3V1ItmIiSslxN00Hfspaw5Vx4qBVQy3hkGJggYrF6QAfzXgms0l92w8GpHcRRIxOoT
	 U+vne0dKd7ZkyFSzqhe/gvdR2y1++88UI/cNpBIwwNoowfpCxcsKLYjvo+UZ7NbUsl
	 A3D1S/8L4uM+TsnQQ+Rjt4EtzT+o1OVCkymheGOIQCQxffhSB85wwA7iKh1qVyAuIG
	 lLGxwaSrVyyviWycVOrs7H2KWNWv6bR+1cINIWvRA9FiocnarYRPGCzdaUkYCF3ddP
	 8xbWXY4Y68p3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 548ABC4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166836845433.5886.14556789997910935181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa9b7a6c03735582cb2c1f649f606c55f6692caa51b8535e0f846823e1fdb56
Date: Sun, 13 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668368454
