Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7185375
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7129CC433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665019253;
	bh=zVwbbkvo+pynqk2zyGrFr2P2JYDJvKskCpD/M+2Ejvs=;
	h=To:Subject:From:Date:From;
	b=G+qfVoLmIxSgp2pZOVzF8lJvSkRQKG2g5eyCtZOjLL0I+jJYrCswBdFg3mlZxdHQ8
	 7vo7trVmvGdjF/wgWu4BNc57nGUVPuKO3ZXnWvVgp+d8PIXQZeVmTgXkSR1I+BhHRI
	 m9+FxVPznpgEeM3n6/8vFeWjt2oYFQhLmUEgAF/F2Zjz2P8Rk1ywiymPZBuHc6qnn/
	 7gOLS8teu4rpMYsGO/XPJpNqfcsZpcv/hvkfvzduEgFiPPSTCDrTgr0WZvBw/09767
	 cKkTzm+Fu13vCVjm9sSoVX1x7eo8vIlLShU4QJWaUT4B3axEhgdPXHEPXn21eFzK2S
	 SRsH1ZdZHleAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 579ACC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166501925335.20261.13214642319990964555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f952fd1f1af7d2de5b2dc744c2ee12847aede9efe6a1ae5bdea387af456183f
Date: Thu, 06 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665019253
