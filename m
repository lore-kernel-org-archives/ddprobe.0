Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621C71860
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 10:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13989C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 10:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676196246;
	bh=fbe6il/UQnM+ZZ9ykKAZ/BXc3d0cGc4VcXd3KabgftI=;
	h=To:Subject:From:Date:From;
	b=nsY1P3d/IbXXVovh5QUtC9SwGpXhFTaxdvrlMSFs3srna22LcVCJNhdbhvIqqoLG3
	 TTpyKcGQxxJeJJq/+ksetKjDrdJHpvMvzVc+1EVdxMbumEPxZMAz7OlA7CHJJdVrzG
	 PzZMVdy7HjCLrIzjIxN1zzbnUdnQBoZ9gThtSxkT9CvpAzrhl5V+uUfehFfEneNsuX
	 MV73jXbxbXKzGGUgUp1EpTROvkNApErIS+zGWTvM21M/cTKD658A242ljLeOtTOh+o
	 UMKBTkcV5ulG4Q+8A8VmOsK1wQYNGJITqqGUK8+XR8qvHlRDjnqUbTOlEEZ7iv9Fyd
	 h31E+0Umy/UBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9E5EC636D3
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 10:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167619624590.31321.17134075462545769391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ae8e0535dba6ad6e6192e56f7ee407ce04de0ebb20c686d8213dce367f5de47
Date: Sun, 12 Feb 2023 10:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676196245
