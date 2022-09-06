Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E67160
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 670A2C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662438653;
	bh=Q/IFDoPmid3Cl/i1X4+CUsiR+i7T7XtLpPfJTPPBexg=;
	h=To:Subject:From:Date:From;
	b=PFY4m5PeFCiUFLvuN1vQkxyWGukcAPk7tviVvkLo4Uzh4GVQf+6nvFB3oVG4RjRT/
	 p4Zff6zSVoiwHcmVVCusyaai2Tjzk7Io9Ou+olMNGK9bNkcwARnvYmTqLj0788BOxO
	 NDTkzTKyldT1EukHdqWqbeOiRRozrBd4UPgaFO9Trqdb59ncHSrgCB1dFcshFTT5Dl
	 F6TWFCvuxCV2PLDBe2JExTt4K4SCDyq4UcUu7yvGBOgI2c65c8g5CbtcdKH7OnGBEq
	 34w9OwmIQoSS+kGY5+Wvi0B4W9ImIw9DMSlVhriIf7VAsZSevTlG+suJTt0AaVe2Sa
	 uyfAUSwBlxnFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E360ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166243865331.11074.10126950674536793979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e12e9d37eda5e9e1e638a22ba5ba24a57f22473e797dcf8c74eb1c80d96d791
Date: Tue, 06 Sep 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662438653
