Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E6CD8F68
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 14:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D611BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 14:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694616248;
	bh=AIzQB4cE14MUmFD0CNPS5tR+xxE3jkUYr1of4BqCpd8=;
	h=To:Subject:From:Date:From;
	b=p66S0CNZVJoXIgd0/uKVSd57mCIRmo03lG6WbvH0zbYHKPVFqOrOx3MX+cxhJvB1M
	 TYC+2TPBZAw4H5yCYLd+rVj90Ccd+L+EbQMmRcp3pLgdqHWVit0b6xtR8/Ht/hfrsq
	 Pa89kWW/AZONPrvRvOd5Q5+A5h1+j0HrP1rrXXPnrRODc0bJwvSBDQ6IHQtbnDzEc2
	 FN5u/X8lltta74H5FZGbkp/PuLm1Nn5QZ6oxbsjwyVH+FVIahGLyQd9nG10Ibe1LrB
	 BalWITuJTaRnLwr90zBqC8LiO+TPq6+BE79GRg7LUUYfgzNjHwBuiv9auauw/cPDya
	 isAF5Pcp++rCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C46EDEC6A
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 14:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169461624874.15039.5427673133123054225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48428f2612726712861c7511df0337ef018c63b80ecf6b5293a6b4edd2eb38f
Date: Wed, 13 Sep 2023 14:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694616248
