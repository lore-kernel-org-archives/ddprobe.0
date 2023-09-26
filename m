Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D939637
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 01:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA377C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 01:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695692108;
	bh=p40rZZ5haV6ANW3aV8m/EU1olwPt66ieXTuHpj5FbWA=;
	h=To:Subject:From:Date:From;
	b=Ph2af1dzS9y6QqvdACv8vxlFmyc1CQXhWwCMepDiUXn0Euc7UF9jkdTZctLJKmNrH
	 bUH5OVunVkYTn0O+Y3r6h6hLVZ2KCK49UwTLd7Gd04FtKOFUO82fUooU0bl7OFRf0W
	 4YoZlpCuDOwdsjE43+2Myd5bQ3o7jhNA/ux/o3wHS9P+44yAvLxBtqmLiqEO4oXfVz
	 M24t97peS32xU5l+u1g+q0T6cG+wf5Cre9THb2W8g59JQT2pziK3S+8R4/BGSjdM5L
	 tYIM+FL4AUnL0ghR5LVkORFDZaPHL5aAKNrujXi0c6iesuazcUk2cSlidiNAOXFoHq
	 /uV9beXNqnviQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B736AE8180E
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 01:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169569210874.6553.9153966575585878801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77793fc55b4bdfd5f6658eb8668052905cdca664db80b594c47d0d22a480ac83
Date: Tue, 26 Sep 2023 01:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695692108
