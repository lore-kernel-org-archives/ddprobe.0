Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D495238
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7qOtuX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C287C433C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699781896;
	bh=76w7ecqlkgoc+zUN4l06ErQ9Ah5hLOe4ukUkqtDtI90=;
	h=To:Subject:From:Date:From;
	b=l7qOtuX/zOV8ZDsoo24xaGS7cpQn78ueDYPari/7smZVPK7HuLjLFv9i4OBFVYmQo
	 4eU4GtYeonafdyO4F2JVn/LnkdEFgSab0cLyhBcSjzcl1eDehh7rzeGb3MLNlOfuM3
	 hpGgWLlvP0f78WINxPA/1ICgTMKaFFp/ipeph4G1SAOpPb6qvlTN7m6rpgaSGqwkV8
	 jAlpIZMrijbQA7y5J3sNwuSGnn3B3B/nwIb09r0Lhrbwl/xzTLXMrET41mmBlPqjY/
	 Tu/8ssPG9yTdCgJKZHP4H/Oa9uBiH7NObK3/aSya7odxBwNM2a6T5NpmCpqRAYCeix
	 r8CMYCIBWbe0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6971EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169978189640.13868.3280821937478133940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7459584c294a51e61dcbd27eea11c0e32de75e1b8b08fe3cd511fff72799d3fc
Date: Sun, 12 Nov 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699781896
