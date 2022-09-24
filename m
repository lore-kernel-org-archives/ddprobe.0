Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7A3B194
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66627C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663992653;
	bh=YJDePEnZAP9I1h4SywIcsku318z+5wa5waNr9nDZ5iA=;
	h=To:Subject:From:Date:From;
	b=cMtwUJ8SC3nBK4hAS6kWt92JzOMrGoYb9l9pObDc6saQfEocp2raXjgsDLhE2lkSa
	 TQoMg2dQNxiOPXmfWbWe0+6k30yDNu6hxjZR9TbyU4g95sOQTWc8EvuBRoAgrc+Xyn
	 mjMvo5iySnhKkzAHWY6s2IPYOZJAEb6RUUt88tb1CZNkP4NVOLl7+MtRywyCgOiwyA
	 h/K+edPMxNfWhXxx32mAkoRAY5m4SG/bQAE6Ex+vOL1aYZoteKuwlOY6qPffkBYyQT
	 ZjodaMdGdM5+bOqy207Bdgju5HKqdEUmyHuTmQzgO9i0R1JCgKb9AHZcGjnP8hWbHN
	 BstRTyZeZQSBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F1F0C32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166399265331.31484.1979269925606618126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5382fc0dbf1a6db6261c29be69ecf6be47e594e7f6064019c867c925624b6956
Date: Sat, 24 Sep 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663992653
