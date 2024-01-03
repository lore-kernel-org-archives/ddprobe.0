Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC2B1CA81
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEfztJz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86E63C433C8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704303496;
	bh=heK5lAyollMGiFrExXYzQgjW1uf61z+Ot0dcf3VIWCU=;
	h=To:Subject:From:Date:From;
	b=BEfztJz+IW9tQZfgSj/Wqr/AfkT6ttOcTuobsMFFoNF4AOiSwHxDvGA0gjzzrz1Tl
	 m4HnUSEv7XHCLH+/bs7m0HuCALwtwjE8VZFECM9nZzLt0dUnENXu8W+c23oHNt+nwg
	 4mdco3AvY/M7RAmA23/kMhFS34uOt9VjZbrJnmQiE9aBnQlEud88IhRCGfOtJ4SgJl
	 8ibx1vZ4zdkkDsxsaIvOm21Bn6g8lKMmtZP4DSdR0MeGa0YnJu6fmKObSO9CNVzHX1
	 F2WDf85OW7F6IvUdaKho6Ehpo7atSQ6gwcdOwwfEBdg0gdg9iW9WqfWnlVMOyOv7qM
	 Md2/x5EsOoTxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68006C3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170430349641.20492.1108746778983725419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a61558356d9481b1660bebe894c6b1234a28cc85c9ac15b1bfb8bc0f20cd33
Date: Wed, 03 Jan 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704303496
