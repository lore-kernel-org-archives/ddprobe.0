Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B717F2577
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65E31C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666168853;
	bh=+6Mvq8CRQz6BedTHgdcYYJ6vyI/CVPihB+r5fuVBU3E=;
	h=To:Subject:From:Date:From;
	b=Y+OQMILce3udo0zeQ60x+CLY22rLuN9f+5FONqSSnO3Bo7JRsetN1CyzidHTqQGd4
	 RfcuP9/FXlGs8T6Vwz0VoFAT5Ktmd7kCe9/aVT3FZjch+mzrJOX3aGgMM9tRSdm6WZ
	 owQLxKQNNHwoMj6wCRRPt/m+DF9WTtOxebe+uCQQPVERtItODQkJSf2kWKWhxdUdMS
	 xyB76e+rOqMxbuy1z8Lv4vlIZnY7n3J8SMeCNK9Fvo2usbbicXRGwr3yOH4bPL9rH8
	 S0WuMJ09Gbo7VTNc52j1p2RKfS9w3+937Aozb2ZVQdZH5fJCfHjlQL9gzj1/uq2q+X
	 pX62AZqGGgV/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F149C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166616885331.2184.2737101574265274579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ddb4ca3a27440863923f6b74553730333a4de3570b6163025b8aec973360343
Date: Wed, 19 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666168853
