Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7344320A
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7179DC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661970653;
	bh=VNKbnQGD74ppFdSiPPPRN75Hq9dvWkyvcb0a/EmiuAw=;
	h=To:Subject:From:Date:From;
	b=n6sivqnbqGhoAzjc627aGVjTiKN/N0XFQGPw1woK5SYhp2wFSDH5Efd37rPKCRhAr
	 /AkA5RlBkewb95yXEkk561xagqKq3aNkL6rvvHUDAV6oJig850M/u9nuPtz2bsVr4D
	 578ac+tgyO+NpAU9Lx4Isik6ZcbgjDjxoymvZlt2qDIBGjxdQhIJj86eobnL5KzG0O
	 jeZjCNzQNoeT5ZJ6hsKztyEA0kE8MDAAgxJMCLfc29HW6Te7SEsU9ggi/HgC2Ib+tB
	 5bXtKQrdIsZtzsAM5pMhRnBgoEM9n+1y7C5+xYrApBIUjbjgLi5/GL3e8WPIyZHPrc
	 MwCCyf4W4PhIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 575EDECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166197065335.30699.8657972989058533276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a274fa09f8fb6e0dd965ef321e999e98ca44d47f2bf73293e9971ec8a8ce5e1f
Date: Wed, 31 Aug 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661970653
