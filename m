Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4E51110
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83FDFC433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673188287;
	bh=7c8VHc/KhrPKrYZ80v7NlP1GZjudDpiuhSodJtNitJg=;
	h=To:Subject:From:Date:From;
	b=ZcTHxEP+W8xIDgl00tkc8lrbxWfNLgiyEoynzhAC0zBgfBndq9cWig+iaPCYlOWuG
	 BQCukfyEcam/GRrTkrp6Z7t95nj6yVCzi5H9CiquE9b54VhmsLmbqPZczf4j0qOagX
	 Tc4Hyg36c+4kIzmgoA8dRjLBu9SMd2e8rjUSiDNl8mnOczi/GjNhk/oS1OkWK/Yeiy
	 RLBzSL2s6EHrSqBt0ynRilCKV88jm17MwfdlwL0Ko/20FAhealLHxzZOmiTEMEUW0I
	 q90Sx6R1R83w6op/bq1KDEY7DohRccPs7WEsckw4TIBNqMzbecktrMH+RbncToiLGs
	 RAMIYvQmWI+eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 661D5C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167318828738.3140.15684105422445534243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bac30659746c92c401b7d17d94784c068dfaf1da91734360c195217e3b39701
Date: Sun, 08 Jan 2023 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673188287
