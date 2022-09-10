Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DFDEA2
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85749C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662802853;
	bh=6TxHyFwsuPIPtUQRSg49ExpEX2NnmIaDHlgLWrTVjvc=;
	h=To:Subject:From:Date:From;
	b=R/eZbBzbL+H1PZ24RQgaQZ3BVC6S+VCpMiea096NcGOyBoJna+BShpwIBQE2yas4y
	 KLDJUH7tGuGCEZi+Ca8292oGIUEtXRtFncwSPviCl64x7rXOLQTTL1UK6bchgG8t+G
	 3Gfrkjti+cowSipy23aKMRl06QoeMvfbq/KtIz5RgXahkklyuMSuwvC34y0xKMl6oN
	 iE0M5gTYuziFqOoCRX3Il76rw1U/K14NrikC0ClOUNTIOyTTSP7zgcPIk2Pv9s2VKw
	 9Q+vTbC9XJ1GQ0yfzo3BMDOCrKJ4nZ/Ht95mOP6ZCkTe79NH26FKb+Y1h+cVxz8a7g
	 FDRg0YaExqsAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66998C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166280285341.31393.1429683261690032621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ed18fa1af5835bfff1d12968736fb5e13bca20d63c11d60f0a2b4fd90bd828
Date: Sat, 10 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662802853
