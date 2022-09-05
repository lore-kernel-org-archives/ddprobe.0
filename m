Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B43627E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7031EC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662417053;
	bh=TvOndrLnhzUCbvmH6p3dyVaWDl0NKbPHzqRSXBotUTM=;
	h=To:Subject:From:Date:From;
	b=bjLRsD+RXWyVggBrtzGfn49SZW92ntC7DWUoT4XHbK9WbaMcJDgeQKKJ3dRt0CpqS
	 cC1e3k2XYVoJiG9ziLv+5xTzo8WE/c13qrsox0AwvII+6gxOVbJEpVgLES4Ww6ra/3
	 AKrrzkXt0oyBwPwUMUhy3UuA49Wt0j28jHUvevRpWoFmj7oLWmHmE+Qu+hRZnzJyZG
	 bpf+7pgPtmKbDZNeSSCmgOBI8wbBAu8zLkmeghN0LTqbXHz8aSAv3Oiu4d+WtAH8in
	 DIZEYH4owVRDr8u1IXF63lQv3DhObOAm+J/LynRx5anUIBvo4sLbTSHGqObVQFbe6E
	 yA0wDZPcny7GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 593E3ECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166241705335.8797.13700199858246973617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65374b6194ee2446ea9249b7d3a66b2a9479a7f65147008190bd82e926cd2728
Date: Mon, 05 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662417053
