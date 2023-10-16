Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534F027EE0
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 23:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+0Yz8ve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AF2C433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 23:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697497628;
	bh=JRj9qEq3wLiCSCYsThQgVixp3R6VmQJqWJx7JoS7Dk4=;
	h=To:Subject:From:Date:From;
	b=Y+0Yz8veFzZNKWBDfr9m6j5Ig69W6o1/X15IkOwIafZrM3dr2agVo3JslfCWMn/Y3
	 grdNCyM6o4PPcV7f+kXAR+4PdMBffwKWQgZoIL7UjGDiJTTNdRb/Gw2O6C5ucJXHWi
	 MdsapbIsL8PEv9YoOVg4eeqLMINu3w+VLsjn35C7VU5IeoDbc6y1aS/8YRyQanwNW9
	 cea94AI18mg/Xtg+0RwHcUphMvcNWawJPfy/BvutZKLIkyrvWTSzS5MxdwLxhPVL5B
	 rocxM90aZKHbCHjZ5MRrTWN54HXwLB6qhWWRE94mR+oersWs5HYiVHoFb7d+bYT6Fc
	 JAZN8lCqKOmrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FC5CDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 23:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169749762866.9746.10910951223904797703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53068b2ca2d1c9cb024f5d5d1b4d25552cdf614fe8f6bc894a5220c8a1eb0b7
Date: Mon, 16 Oct 2023 23:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697497628
