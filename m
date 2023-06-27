Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6C0A23
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 02:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6D23C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 02:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687831988;
	bh=ZB/GbVSTmPG5gmfRLqclwvBJJA3ujonRTyps573n1Kg=;
	h=To:Subject:From:Date:From;
	b=cGdKHr5jwZ4g/WLu69bAQS9YNJs20z0PUHWwv2WLxkv/FG4nfswO3gpBXO3NBavaH
	 OwkgnubCqEGFC2ipygZJSXBkxEjdI2kNeC+RtsWmXtjpgcxgkDpfMIQM5G4hMKBYd6
	 sV2SZi1EL5KIaqZR1bq/wORX2wF+95MHvBZbLDavdIQG+9ViZZDIbOl8zoq0Gsb+tQ
	 MKS7h+PtJCOSPcQGXH5+qHq5h5i1jGu7pdNWgHjfVtER90F2IqxpMfRphQ/F//5Zt7
	 qShyQT6jha2z09joaMjxFclbFyz6wzzkkqlpWVPlwzzXRJ44uTkHcb1n2tMmoB90t7
	 rNZZZoo2m7IQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F4BEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 02:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168783198877.11924.13789526269943055601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2550c5dbdc7c6474046fc8e555f2160482ba10f895df307f7383d48844f524b4
Date: Tue, 27 Jun 2023 02:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687831988
