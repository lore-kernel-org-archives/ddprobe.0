Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42FF8F68
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 854EEC433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673564487;
	bh=PQHhY9TSd1RscgASblT20PsC2c9Ht8Hb19boh9UMb3Y=;
	h=To:Subject:From:Date:From;
	b=TmuqHkZgnYal9DRfFGuED1sT/OlMXLQOFRwr9HWBr17Fj68pUDcmLXWlV6pSLJktv
	 ugtbsndnaZvEE8LU8L5+iJYs2KFp+x9Zy21tp1vdwuCjBl5QZmb+xnGAxOjetyRH1x
	 XVMtUlrw6UhH2d+yUEGTSV7p+PkbBXdl91lHldMB1074w+3y+u5ypjg45Hk/QIPx2T
	 Df93nwzOlH++1mNsDC3N3F1SVKFJ8pHqadIAjh2uO2bMKNQn+salMWeE1pwNcdWaez
	 RR8gwEMapWJl7cGPbd0gI01gzyGewn75Cfb8Nmc8WVy/xQDCrBXuGbbLpCHeLBEnsz
	 sz2O6sYO9qQYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 704E1C54EBE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167356448745.30748.17163767801806156117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f3ff1bb889c1ddc3ffd3418363e02cf20332278249ff5381338a96026dc3cb
Date: Thu, 12 Jan 2023 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673564487
