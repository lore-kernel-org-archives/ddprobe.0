Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C052A3C3F
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75612C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663099853;
	bh=gqZVgCzO2SYA5d4g9cEOIkDMOSXvlj8izGYoIJnO+E8=;
	h=To:Subject:From:Date:From;
	b=o9Qu00OF9sliOqByVnhRfdckFd9yQ/SHPrm+FHFNxNOG5G9a4Q03UvSX5aFIz35WD
	 /oyH9kc2YSXcPMoac+scNC5SG9HhIwdv2oWEn1JJDPFe8xveOdjGFZeofJ4andQPDx
	 gyahfOfvEmm870N+ctPT0IuVJrM4n4EBn/Lo1KiRTVvRfFe2YvBbEVWMf/yT6Y90bj
	 hLPOOIJBnA1S0U6IEl7C7NY5EJCx15HCwmhndaSR7GpydrqQqm3y3Hrs8cu0dk/Vmf
	 dZGLC7bzCT9wcAiUdyO5kFKrCT3SlK4avXCIb1yBbdFjrHCkJwT2GYU/BwReoFoA5K
	 O6V1bNUU4MGCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56500C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166309985334.2081.3650957518425431062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18a3f5d22589d73c7af7196717b4d7c0eb94d0e1c0dee5c21ec5eeae3d9e5a6
Date: Tue, 13 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663099853
