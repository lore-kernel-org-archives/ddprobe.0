Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B71D524
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 23:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0741C433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 23:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680738426;
	bh=2fBWzAIl+W6a7sln8VuUoAsrk7QZpiqoY/LNQA+/elA=;
	h=To:Subject:From:Date:From;
	b=CUC5qa0TR3RknDWTMXEbQWaTqGmUsWvpl8z8vBmZUxsmMeuWbC3bGmvT98WNX9fZM
	 kIR0gqoWrj5262n4i7X8iPzNFw8iiVkZxjBxDAm3uFO55NkmGmqGGs6asShNbXGfPl
	 VFcF9AOIHnaLhGQVAF4lb5S24/QUzj4P+1eiiImMnfqVqoLbAjlqshF/XS6kRF8Ow+
	 xHq3TWGA8wg2YsNrSm1CA9vEs7Vf3SUXpg2MGBr1ZTSVwo/5QJcx0H+uBzXCauuu9Y
	 RjgAElRmneUc8u9IlgvUcb5XRBNKiNTxmSHO5uh1TfkUmWeEpbWvSxERnV/jqyH0zH
	 xHSvBgHz4Qf+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9FE0C7618D
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 23:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168073842581.26242.8031549652822341183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12448c6d7f66b641f6d9b9bb671459bb39c0f8678ca86fba783450d1b47564e4
Date: Wed, 05 Apr 2023 23:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680738425
