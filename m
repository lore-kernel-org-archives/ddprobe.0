Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E8A636
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4C9C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672813887;
	bh=lE99Hip0i8+Okx06fJuX4RLz4bNm/bwuHfyQukE8mG8=;
	h=To:Subject:From:Date:From;
	b=GnzgbIqrWtY/iI6tKr7CAz04NlwH3LTT23DoIdMQp7ZHK3lEJ72E+di7xCjakqpXS
	 aUocZq72m/L8TtSbvoVUwJZH88FqRiIxBUhJ+O1CUQv8Srq0xM1hsiBt73u7cRlGCk
	 G4GCyQm8mafIkLqQgGfpAryRKSZwyuWPwyEtCu8wZup5JxLX5SraXMkFgwtk8w33/w
	 2/GfB071y76QUIV8Z1xKGW05qKAAPgBsLkZJWf/Ks9vPAE86GaKsZXEDgpC03vrmvf
	 +7e3dhxXIcq0/h0qnEHJw2yQSVgd0hrKy2poVyfOqSx3/j90cvp/1GVgvmFPB0WZNA
	 H6Q7llimgwvdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E384C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167281388737.20981.17437012240209049263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47b6a02a1514937d5fe069ea6a3d49fd8d996c97f6c93f478cf3d956bcdc9f4
Date: Wed, 04 Jan 2023 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672813887
