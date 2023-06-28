Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E93A28F2
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 14:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB324C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 14:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687963988;
	bh=jzdmWe945ImY7czTtRZhpTfWjtooqe3hT/f8Sa5fDAk=;
	h=To:Subject:From:Date:From;
	b=Qm5ldGowxALmPaEWNimBXMGJxSo8N6zgoi9Qtj9RxaC46hBtK1QnGCLv8KrTSH3zA
	 4hjW2Af0dbS5brS8czangA9p/XG/bNnX74oh7fs9qaIWGFSGuTFl3VjNdOQEbMHv7U
	 qV0pBMj3my/YGxQgMxyysOn8GD/SZzSvEx02+R242stEGYhUc4nbfmW9d6G3m7pDN+
	 VsF14FB50RWkwk0vPmIjDTAsvkx9/a7vyhZOczVs68ewNrDMlp21YEvSep1ohtpcMa
	 Mr478zKjf1/839lOAb5Y0GtcaNF2RJbYNHvF9yrq8iPItdzzDBSGSPSHzUneHjdH7V
	 bGyJMtLR0dyLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA873EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 14:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168796398869.12841.11890468204972135843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f5e94a99fab4c9a82e3d028650fa61ced88dbe48935a195debc3b5376da42b
Date: Wed, 28 Jun 2023 14:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687963988
