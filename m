Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB871858
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D7E7C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662840653;
	bh=3Ev9kodP7dYjiZbIN3eZn9pAFcpC2xvGNhH0aRH0f0g=;
	h=To:Subject:From:Date:From;
	b=RYSxV85K/55II7mDoIRyVslykaUv11PrF8MHVvlhrHLmLNflpQJ44jWFYxkI50WjG
	 ujB4tZ/I1qxtdSoAOhhU+1htZmAN5h/izUO0wrBy9U6t346oi0hYgs68+scWI8k6Lp
	 aahZrtH5s3mw+wRzCIxPbLTb7HPkZs3qMKU1DdY/GmWtxLMv8+We4+kO8Z7KxTp6Dj
	 Fx+gztk5LgZSs8Gn+4gDqprylEEBT80oD7tMJ/S6PnqHxQlhQ33H9yA4Nv+WdxoUnd
	 1GmW5j3aOr/Q3IPvGIgdB529GtIKtJ1/FaEcSnUtD4nNDuGHNu6eeFpyEiZV4knmLH
	 aB3jEdvtx8wEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5545FC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166284065334.22908.16660481958789241853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ae3089efeadc776043ad220667a01b666064e250613b3fdce652d0eb035ca6
Date: Sat, 10 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662840653
