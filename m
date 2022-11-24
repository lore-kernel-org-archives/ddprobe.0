Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC37F3205
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D895C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669333254;
	bh=2TzN8gHLl0O42lS56hI4HhBJE8FNwm0QOJinYYtIF8Q=;
	h=To:Subject:From:Date:From;
	b=Aea9EUPb4CJ+IvTbG32BqnoIPdIc4ueNF0Bkg6ODbzyVOK4A8OZrazzpZEIRInMzs
	 cYr69lQobV30Dav9s+ekyWj/ch52qr1xdmsYZv18VbARdiqFYFrEh4Khqa9GhlCB5a
	 gYaGsAQAC/xecHKdjoncWGNmsaeHg/xW1i7cOrp32NsA53bNuFsglcqFm0tubYntxR
	 booOvyoY4LGcfMCwSa2x0bPg8cd9oC8BmBL0R4vi1D6xGJ5NAmcYSIk36+U6CZk819
	 rLMa1esYaijqyLzuo240vWfe/DXBl7U9dMrDxbmuceeIqAr03luEuHvLSAYoHR3xPr
	 g8XxBdUr2oVfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57ABEC43217
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166933325432.13047.4593919247389852345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8dc013a4cf127717b30e483fb6cc3e3ffea199d1741ae36b30c3e8fddb51b3
Date: Thu, 24 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669333254
