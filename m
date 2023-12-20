Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDE418E07
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ny/Gkgr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 857FEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703059096;
	bh=GZrCbv6UO+dbALpWhDlUAl5PWKwzPv7O8E9D+XoAhpA=;
	h=To:Subject:From:Date:From;
	b=ny/Gkgr4xiDmCdKVNoBFdyEyv+KSexEV794Er6gBHS+rDyHAnNJuywW9sQRh/+SoA
	 OGol9jWhpONUBfJ6X7mmQZlEHW0rllzFLxn4apa++Pqq84DrgqTLDSDeeTK6qaqKBL
	 nvA8MuvGAmnMWU37DP8NKP2iMMcfkYjM0geIOu8LOmacxmp9d3rW4eb6ugyOUvFvMO
	 jhpzBurkcXVhXUhwyUvIspGEjIjwHfWAHyj2QUH05toQygSkWYZOREKcjh6T6/cCaO
	 3+I7EO7CTdD2PtPRtiOWRALdkwEUrYLvqQgyvrr+Zv/Z89synYnB+8ntZpWCiJdLTL
	 vdu3NCR7Obq/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D41DC46CD8
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170305909643.4255.10836689800030750794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a6c4195c1bdc9a6c5faf51da5d0c887f0cfb3d74487842e236795cb0397b14a
Date: Wed, 20 Dec 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703059096
