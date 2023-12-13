Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328352E3FF
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YspcvKG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D711C433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702477696;
	bh=NiIv8hRb4nj35+KiatneUHfsjsf2MsIsjeXcxBPo9EI=;
	h=To:Subject:From:Date:From;
	b=YspcvKG1Y9Mv3I9wYXGEmcbBlwpjoNis7iiMRclGCOHKzRwni+voFhMGYNR0W6+v1
	 RWDJ/Ht3rl/M9ZnNaUssoyOK3uusvnwYg5S7f6lsPrxDEiEUMFZFUFnCa+C1Sr8jyh
	 yYefVhy62JwDUT7sSioVcsB+uHTMwXOuED9dp69iC1vS4tNzFvECMXwLDk+2DxK7ef
	 sFfzaYxgGsZnYy4CFbKKa+scPNJUOGiDWquNK88xo+57UAXMOb/Mg8B85bZKB5/ex7
	 XUBCUZkVtmfd+dGm5hk/3bvDNbVsCE1+tduII1Vh9qOK0+ivbFWa0NtTPq4bMP3hhC
	 81eO2V5Ov/K5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 619C5C4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170247769638.1959.4472801057818832364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19dca2f1f2f5367cf926fb717c3194b2bc82b27ceee72d7a7a2efbcf2f85ca26
Date: Wed, 13 Dec 2023 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702477696
