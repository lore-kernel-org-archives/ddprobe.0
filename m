Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2922565
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F027C433D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663803053;
	bh=I0s5dffT7sD62gpxbIUq1WBgi46fOt5pjnivvA4+4Ss=;
	h=To:Subject:From:Date:From;
	b=oM5zaCdahG2galW2mTF0siKEjhc+naUNYlu5YdLgRYCVxg4JL1ImCgRVv3v5tKPNK
	 MflByRvAvY1tDzqtKERW1/N//BEjMC/BKqcsGw88DjyZpz9yAemyNAZQCwfdJRLFo3
	 ph9XIqD4S/pFoaHjOjM1qEC2c3I7LxoEs/MtEgO5DXiPBFho1BAK/qZy+7kBVXAGJg
	 8Shf/othnGhbMiMq2dd4negfPSnFGG1tkXYsrMqsYn6YyI07rhLE/4Y8YyiQvK2HAb
	 NoFfIe+Wqzf/YOpNgqArtahQ2udZ8jt+9KW7d6fiyJ03oXWGmxPkoj0Q1mkt78R9pf
	 qOkytwvyyM1GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E36C32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166380305333.28817.5707031179862015355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef93a6ce3c2baf751713907c3b119fc4cdca41bedb8f6f00be82ad441e00386d
Date: Wed, 21 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663803053
