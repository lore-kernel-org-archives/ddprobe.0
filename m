Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6231C3F
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69F76C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664463653;
	bh=GSTYJa/V/8X7YHTv/myzfD6rLzocOTFtEYUzE8h0c2E=;
	h=To:Subject:From:Date:From;
	b=OnDOaKgsdoBAY9FR/15vVzrx8PRoepdSH/DWP+BUqYFjJfpPQ+1CHKFwANwUbh8jg
	 kNMJ/l4Rl9O4BawTfQI1lpZHc4nQ5Q6HlpqBhUmFzJP4JsRzuDz3HQ1+edRmobEeyC
	 ClaE4XIkYJfeE+4sbiaqP7Qjoi+K4i7EKkvd5Ejolsal/G0VzkbzgReVIklhwz8WRC
	 c+9A8t3G/tEIfGXO/NRSOn+fPLCWibh8F5iGk/viYBBl7OX1TQvVuDACrtMr+47R83
	 h142CDIN3nx8IFQIyiGqOinwUvlhg3RI+V8eyr8n2VVpbPRMah44XumOZnxyqNFJIC
	 IAFmCoPmDmSHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5212CC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166446365332.26481.15997593157658837627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20ecfab2165ae83c89324648a5b40d586910d040bb94303dc7354f28c78805e
Date: Thu, 29 Sep 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664463653
