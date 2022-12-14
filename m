Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76A13208
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DEB3C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671046287;
	bh=RoE/twtBHkXGLvskV54W+OjuepwV3J2am+4Q+MDMqC4=;
	h=To:Subject:From:Date:From;
	b=VPFfhV/X2Xk/KwznT5g4OACycYWeyYAN04YcAFCkW2DITBuHp18VVCIi74chtC9Ig
	 3y5CfYcTflm79NZcm4MEJ7ZDt8WrV5vYqmegHpCDKrqVljzZ/tOjVdmgE3U5H8MtjT
	 3UrMou5hmw0RaJMSBI1qrH/dfEl0WZAC+2IlFN47AutYFn+GDEFSN4YXLAuGkFBwCq
	 xvb9TVZRGqngR59t2+FX6ZbPU0pFQJJAj8Xq7BUay3MWgore8vv33scr843LgZc9Dv
	 +Y/bTZ+wu2mzyV/QfD00DWX21QI4eUUwmsV1Cq5V6FFwPxRcUAAZlps8loNQCqwxEv
	 aBJDd0aJiP1gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F49CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167104628738.5297.7395928633136723240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e0f262bfa8935783bf510325999a9436312ac63566961722450bb1073f4eca
Date: Wed, 14 Dec 2022 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671046287
