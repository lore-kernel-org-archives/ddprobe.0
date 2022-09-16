Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5E633CA
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6712FC433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663323653;
	bh=1+bmjmuEMK22cMUiyeY8yefMFwe0YEPUwfiKn3HKCws=;
	h=To:Subject:From:Date:From;
	b=kRC7rHS2lXynMyI6ECebSNQyGR7NczP9ZyATcMdaKnJA2/J+OJ7oPhdTqzXr25PeH
	 LnBCWGXLKvIkN/LivcAlOXoYMs9RG7s60CboCeCANGE7RGR4BWVZThtXsBB3tq8x0/
	 fUuU/iiTXQO/K3ybOPcstm+7ejJ/XAC5haTTjf9RRleylF4dhANZy7f8eFrb/b5JLY
	 AVHtKmtPuUQgDspW3vMsjV2D7iSkhZSoohDwCladq77kQz2cnghwpuNRNBkjfD0ulX
	 uGWhnTZPB57N37km3hHqRw3zYZVa4U7X+7alHqCqpSWsaONBjIZqI1wF3pOgKDdxHN
	 EWWCn3dKSOcfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 506CBECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166332365332.29026.4614358640521537502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b6abddefd171981c04f44e107a95a98b6bd2b7e59f1cb1d0373d8a134fd73b
Date: Fri, 16 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663323653
