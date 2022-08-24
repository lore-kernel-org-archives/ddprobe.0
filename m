Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E055E1870
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 19:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87444C433D6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 19:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661370652;
	bh=4shTvz0m1lu0cxdh0lxPvP44CfBO6PXpI/b5t/FW5SU=;
	h=To:Subject:From:Date:From;
	b=E5e3E3a9TlFgbOW8FeY1y6w59OsvAOrcazuknCZN0xOglK0qPcNTcSRIg4YHSK7kH
	 1NOM4JoMB1lzD47WkjzlCxB93B5yEEaQhjODBkfsVwh4EbWIctOz8m4jUwGhXJHfyl
	 ztIeQ4Dl0S9jOqBVcg7CTrheIg4YjIHh9JiE599dfHDi8OAud/6bZg53yX2w7Uj4Fl
	 3w5wwKS+0/2HkITpQwO0ssl5a9zyQ2mRdvGGoHjZFxyWYVyRUll+0hlsEc4NyiccIE
	 I1X2eJoj09fahr0MDAxRmTbJVJtOykKP9kn8SoRGn8x4wpFoE8jbucqpArblwXrwTy
	 azhbHxkwIPV8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B20CC004D4
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 19:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166137065242.28623.7696703991169118238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc50be5048d42596a8b8e276d36be09bf42826d17470df7ee77ff33743a4ae8
Date: Wed, 24 Aug 2022 19:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661370652
