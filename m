Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF99320F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F309C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673641887;
	bh=jg0Xyv5LfPHdsWCjQQN3GknwAvXZTKTOuoyqe1tF9lc=;
	h=To:Subject:From:Date:From;
	b=GUaqkapoiqBqWH+LS74PMJLRdaLO4DeRPJ+t8+rCB18w+93NSv1WhMVzGYIZ6iiKm
	 TJjvFj0Ua5FtoXF22J7as5LqR3GnpZn32tndCTTsTkHlPX9GOkmJEIUgVgb2+Ch6Kn
	 2qsHPgk21Wgw1Pi2OpsS4AMpIqeSI+EpDRIRC0evDyXFFz45l7xu2SXL6p5yl41wK1
	 pwD+e6qr/89vgvGjD5uyeV0z/NH+4EbGtTvEoEbIxxbHTVs1VK018HVhXbSp7sZW2a
	 4wATBC6xArHeJe4omjM1DCE//37bMjA9fKHGfOhDvcztr9SUNt93zx7b49/fc2pZjV
	 y6+SUN4hW/n/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65D6BC3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167364188740.9733.6727120195371901783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d929ed8dcce3f7e3a521bcbe1cfd3d43f430740a699214dac836a166c71b27b
Date: Fri, 13 Jan 2023 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673641887
