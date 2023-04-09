Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363361360
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 06:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB53CC433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 06:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681023065;
	bh=OaUxB+b6LUZ6SsopXSaaWX+MpVnPd/nA/7UPP+DT75k=;
	h=To:Subject:From:Date:From;
	b=jTtH0cb3aNfsGn5bXRx2wmfqbU9TS16qjz1/35qkoJSZ2QCGD0otq/erfH1Qx7RW7
	 3oE/A6rPBeWixqgyohFx9PAN7CfjTqM5Sc7c5OMJPhzE1qbDIS6YRI5G7sP4iatlaS
	 nubfdMlez9Y6QFsEeZ1Rq78hq5xnBHYxwpmvYjackNY1wtllL2byKPMArfmD0omWZu
	 vzIjZ+uUiqQiv/zGRJ6IghzKqeWpEmK5mGBr64nkcjJTPZGnsK1p5k86MLt44ZhVBJ
	 MTAmJUW42kJnB2v1IAXk+YqJntqCumyTm2gkgkfn4RDSoEuMxb7mZYOWyVT3taw7Lf
	 s5AD1wqB0+Jcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3C1C77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 06:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168102306573.6627.809338430027578977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67dc753009fdf40c717ab26c2fc880fe028dc397ae044b1d48bfd0f371ae315
Date: Sun, 09 Apr 2023 06:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681023065
