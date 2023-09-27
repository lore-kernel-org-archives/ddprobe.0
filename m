Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7502905
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 16:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC343C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 16:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695831968;
	bh=Qs0dxfm2qNQdfO7vftfdduhGR+93S5K0NqP9cZzFRUM=;
	h=To:Subject:From:Date:From;
	b=BB0ejSOppKs7pj9HRY4UqYW65vxHar8aqYSa5AtLpmxrCtwyf4HX9PxwYRMaRcb7z
	 PV5tBfTOQWrnfakusDP6vp2I90YMX7RqHhihqnjWNd5Pvt1zwMt3S/ewZ1azDbDs3+
	 TnlMPrHvqMyonaF0ToiQoXpGhCspPeAb1/qSa9BOV2sQK5BRO/510oPQbt2iVugM1M
	 LDEmpUpO6TG/nitWxvi5qJvbJVlxudPZNvBUjVip2GXMzy36N/xB/cnZpg3a/L7O58
	 aXzMiKKGDSwNoceqjS7YELDdHKZo2jrdLxiBZwUHm7lRR+dMRrsbLu5v0NHeAjMOGH
	 SvmZbgoZvo5fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBA2E82CAE
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 16:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169583196869.13402.4348160840096106388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ad2550ea5973ffd34c1438460da80604ce586b763113299faeafe338935cf8
Date: Wed, 27 Sep 2023 16:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695831968
