Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB66FDF41
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8HKyysn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A484C433C8
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701238696;
	bh=NAgUfkBQct+Uj6ponQDpkItCG7gEzrDqmZ+D3sbi1Xw=;
	h=To:Subject:From:Date:From;
	b=m8HKyysnGQ0sz0QeAShztrPzpEG0gUGiot8vFX9b2grVajCvn5wO9j1SXH6sAo0Zd
	 alOCLqTofkiPapZHehAgaJAKBsVKB4PFwi42yewW3s0ub5EwaPP4hfJFqPMPmvyM9g
	 9gK+1gBDfkBzWsAbUC/Rd2zfLnLTJPY3cmEYZIg5vy9+H9mm7otswpzL/MoPT5ycMv
	 YGHseXmdTQD47Nu5pNF8iKC90mBfI6sz18lY1warsSjPny8KDEatFCpN5Rml4h9AHz
	 pRGeeDY89QZACM7Wf5ozDV1BJjhqj16dR/u/MZwfv4ka+CaRGnuFPP+FEiurKqT8Nv
	 t4MuuMgF6YpNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4E6C4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170123869637.5194.14277925164695464632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 195719d5257f1ee808a8c144faec8e2c9386a3cdc31983a0ca278dfc567c34ce
Date: Wed, 29 Nov 2023 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701238696
