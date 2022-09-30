Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3EA25A88
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69CE5C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664565653;
	bh=G2GGmNUBmQpRg2Z5qtNPaiC2mPruV6cKmqSTJuetSr0=;
	h=To:Subject:From:Date:From;
	b=eOQZ9GGsFmO9Aah6PNaRdBLBvKIq0Ych/BOzEvYojuluknP9rQ2UD2BWqIyoSvOnD
	 1jbU24A0BM48bCnzpa1NyaLTp6QRh1OIUX/m8NzII4bdi6HRrYj72ecIVQ4yPKvNkr
	 zwMqhzp0tIT6lHcGtuiCVOreepiV3NSp8lEkefHSwgGRLKVLGl+gKTU9MRAtSk08YE
	 XMzyVJll9qUo/jXDm9/qzyO9TI0ttu2JshST2l0PMlTCXyFcoO4EMUQ561/Q7oRT8F
	 1+f/ZEpDMb+KxQ4RgNDNa2/H50qBT6vflCwtB+VFulNEMqRZV87aUQdXkB80j7Yr5G
	 YE5gZWYVX+QDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F844C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166456565331.28175.18156604381224590824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf33ab943c0b16ae56ca4fc638a6c952be811be8a2867b0f0262624b2f7330ea
Date: Fri, 30 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664565653
