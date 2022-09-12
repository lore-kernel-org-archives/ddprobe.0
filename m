Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCEF33D1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A713C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663003853;
	bh=MN2vM5pQ0IhyDob07j8cpQTxrYQck+3JziJRyWHSkAI=;
	h=To:Subject:From:Date:From;
	b=RGRcsZ3THZrmhTyLgPy3wduCF1iNBl6KyX3ndJ+DCYchl1Aan3erG8aZ3Mm/hRGd+
	 52sJP4yBqCRJSmsjS/T2VHC5pgL/fqsSUv9vziC7ZvKDK43N1/nEowUHeeeDYoQ8iJ
	 UmdKl1gftjjjyEbLXWWDnDZ/EmpciiTaqg0e40sx4yDzh+nlmbNrtzUpwoW8cgVb4v
	 hw3GPeOJvsR158v01MvVYCP5Nq9vyRMnxlHisvevduyCE/0WUjQxSJF6hjoxOyyuXi
	 uP2/XRtQaXkT8Nas3eXpzpHfL18pmHko0WRsqeHC2Uu6xOmz+9zXfaNDQlwm9TjaHf
	 pmwGwZn2dM7mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5221BC6FA82
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166300385332.29340.9353331264891468758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd972f48719dff29583d9c5a989d84110ca4314774e36b27a5ad09dcd3bdc0d
Date: Mon, 12 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663003853
