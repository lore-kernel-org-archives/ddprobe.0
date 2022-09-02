Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6C946700
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82EEEC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662128453;
	bh=ND46y2sBft1aUpA9xN59uJI3YgC12arDiP2f3n4NRYk=;
	h=To:Subject:From:Date:From;
	b=Se+SEuSYnOysFVQH4xtXsMygAX4lfmMTQNQEh4t+o6Nf2BMLISA7TdC36iJdaCPAU
	 QSX//hN3KJ4YjMqAaNQAmSzZV1Dv1SC7CpJmVGll5pR9NymLhNNGDGXq2nZGM1loX1
	 pgK2jeygFLIDYEzqsqGI31fZrNDKjw5ZNBOxilk6DjyNP6MrQE5aP33r7JhF2SXuMQ
	 w0argP/qjuFwAoppfsyncQDrV1RsbbmTVbxgfvkGBVIN8/6AiSOtQcVHC8hSXozBCR
	 U9T7MptJFu6OG+Yzg9XADilVD8m5jwvdmfyn+WvloNJfacAXkgOPTvYrw+rKsS/krX
	 17nko7I/1YABA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF01C38145
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166212845337.21311.3872199601529605498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ac1871708ab91337361576e58133c49232a9ab421c182b8b0141c424e2530c
Date: Fri, 02 Sep 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662128453
