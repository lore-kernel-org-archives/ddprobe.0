Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89541376
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D84C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666840254;
	bh=p0bmI2eC1jSxCMXvE7duxgtkj/AZO5B3cAsWpADXgGI=;
	h=To:Subject:From:Date:From;
	b=VO10LCCH9EOcSdhpLOCNKs0FnIMAfDjm+cJN/CdlyBFeSrLBV6fLsEaU7BPEBp/gc
	 /bp2xdeNtd2lKD8mLVhuK0ylm7RVhZS0dH5w04v9pT0XMliUphysvMtcWIb6hzH9Zr
	 8PaXIwP9PKv63yS2E/Si8PpW2UuKcoNglzxKOJC24BnmsE4e8oeKHrtVnYLjROOWbV
	 p579VaPDcirELgsB0cO3+d3H92ydwwEZZ0OS6jYE1mW/7jo2WG1oc+HpjeF7eZUdhN
	 me8qgMF7DjZ8xF49dDSW22P5lmvIj+O69zNkzfdIDGjKCod5kp2cSaQpfv3ohgHLVi
	 U8QPB0Yv5pFvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51AACC433FE
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166684025432.11782.8526301259160910497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d57a0481242fdcac3bb262f6d877d41e4d741c5f13afdabd614339adf638be2
Date: Thu, 27 Oct 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666840254
