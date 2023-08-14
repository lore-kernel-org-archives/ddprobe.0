Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6D71381
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 02:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6CDC433C7
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 02:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691980388;
	bh=mdEBE6zH7JtR+iJpeE+yvj+ypOBo2itRCZ21j2dtIk0=;
	h=To:Subject:From:Date:From;
	b=pxrLZhopfR9SNm5oorhJF/Ebzwz8wCSEA8o5rHC0xeFbKyAZGXFe04aHhPvkqwflP
	 JZoNe+8vU2Hr93RfW7qhJYRAh6aNor8kJgUtcUn2Lh3EWuFTocVmQ/S77Y36LOkwd8
	 Ac1nSXutTy48ibGIOhSUhF6g5EURfdpSpBW6uvl12JxUpnLSNEe40xsbMtXbTeloM5
	 Gdw/hCKeJjQMZXbPXEE0zJpCRZH20lCtwIt9aGvFLPeRoGTPjXW4/LG7OoFmSKYQDT
	 eLx7oYxvE1n3ZFs6N/MtfqFrnR5xFXs4mJntXXSD4ztmf6o9Xu4ttqmNZZkPfBL3cb
	 vB9XvMMto6NWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E2BC001B0
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 02:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169198038865.905.6512036766924630108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ff1bc090090ed192c12b5bee4f78cc78e8516206786b02925050181b8734ca
Date: Mon, 14 Aug 2023 02:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691980388
