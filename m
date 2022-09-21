Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCFE7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65811C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663786253;
	bh=hBaDZltU3ymVAjMsBoDjbwMEe78wGzJROSUDhBLVugA=;
	h=To:Subject:From:Date:From;
	b=Qv7K1aCzHGeJXImkD787nlXfa6cuv1mSWIXJuegjy0p10FoEeCk+cvu0h0VFBeRkq
	 8cJz6zIs2hTDi2lNNjNRkZ/WGhp2Ql2fGo5lLKygG/qNd4NIXqbhn8w+6+SAjJZgUM
	 DfZ3TdDX2nD9dFgZrH15138NNUB2io/Ttr9kjtt0mqlSU7QNQqkYd6boDNRJDX8lYs
	 ZTIES7H8n5fORmvFXWh3NVzcSPJv9R1rhDqlw783WZ5L4cpsLd5d3hDTNUTbG/0aMv
	 I2uc68F9ToIKwoU2GP6saCzkOoXPpiLWxhk8IpGvTIyXYB4SanLPkGl4d7+e51vQBS
	 B0Z/ihLvH/n0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ECE7C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166378625331.14373.10346410944847774877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1a91821df7a9791b5f0204655888a5c6944fb271e71c2c923d3d276ce19819
Date: Wed, 21 Sep 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663786253
