Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6FB7B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FCB2C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672972287;
	bh=utQHk0iU2U3qhe5UsuMLANCaza1nxEkKfrTfJl92KyU=;
	h=To:Subject:From:Date:From;
	b=V7G7t/OUdIZqyXJEGebxFfhhgH3bbFkGsEoCSupZAA8wCbGWQfiQRdBIQ7cgDJY/p
	 2LRmaLElicY/tF+z0RlX2o2TZJWL8FAtBepphW5Iptaqg7W8aopkzdmJeZV5w8J68C
	 RDyIXZB1gP2L5BHhpczbmDfxLyLoFEJSFShWCgrAgRq5qMdnXwZnhexqiA0TV95/2b
	 cl4pi6hM/9Kg9Ez+FMRAzKyeaooA2i21Jf2R8WXC/KCniEws66S0HERQM69d9axx1J
	 jJnSyNM2rgdoO42GUk0B08oMPOFy00KPVqnZP2H7Cw0NoBIMGjTnLIXrLTks1jafj0
	 TTCPaQ2ONuWeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 662CAC3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167297228741.10936.11724864806748955027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e052cc8e4219984b0936f9ef7b357314d592042ecc73daa4cf418a6710179d
Date: Fri, 06 Jan 2023 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672972287
