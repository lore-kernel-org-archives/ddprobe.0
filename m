Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201E310E7
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 01:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D864DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 01:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680224405;
	bh=KPg0QF9A9PibCkx3rAJOBMYMbWBDWAbaiDTgbN1XSUM=;
	h=To:Subject:From:Date:From;
	b=Keaz/M6BgeYfAFIa+VelgZh16vSDlLXkCth6xAdtBkd/TMh3lHS3Dw3S4ADZIst3A
	 HPu45A2TUGGFNsoLSdSu6wA7h1WIWn3F+cbR6OBbm827UrZ40HGQ4rux6cFIO5N70V
	 uu+Z9EAtj24nmHoBtG+2F/w+2uu7JGlvc0siML+fQ07tt68GyYWLMyZhFZ7bnYMdUn
	 0/IxpYVMt0MO+/3ddl5FBQhVyoUUJjPrVMHfMPLg42OGVDAFsiP040a6/jPAds/7Q1
	 RBAfw1o+hOS/dwEVr+ym0w1z0Svt1VwXHyL2J79U4dBHno6EzEUiH8n1Jsf0s1zxhz
	 HBOGSFgRRsp3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAF5C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 01:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168022440576.26812.13379791002811208064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79ce323908c944efc3aaa410fa097689a7e7be35df184469bdda8db9a9d8529
Date: Fri, 31 Mar 2023 01:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680224405
