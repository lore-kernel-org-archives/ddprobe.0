Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBF7EBF
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E1DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665919253;
	bh=NJuwxrnb4e0i+0corHIoPcSQ4ySqZiAX7wyi5jZcSuY=;
	h=To:Subject:From:Date:From;
	b=Q9n6m1TeCjVhqcm7MD66Ck2j1LVUDoveDBDH6tZk24n/uiGhhJeVj+mrVZujNYezh
	 fCd9FqQzvj1FAEq4gYV8H88fKMKha8DvJAQUGIPK/aGAML3zcY4HYT7JibSYEqqWrZ
	 WReWH50cJP4DFHcomPUCEVy9PvuXzmItPD/bFTbilh/KK71dlGMC5OmfhH3LRhCclV
	 XLdv1VT8d+QxDY2EBJvfmNexC+nB4RTRUzhZKdYrMrvyDwCycKCqOuEE/mzerB/siR
	 RMAZYH//aKGd7zoQ+0jBqAiLXt73GLfG7ZhbiZfWg4wmWlmfVmauy4/QP/tNnM/Sds
	 AIuj4M8V3S4Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C366C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166591925334.9332.10062958488402246780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0865fc89ac26eb508f6fc4597965cc743ecb0798008081873b66a2c4a452749
Date: Sun, 16 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665919253
