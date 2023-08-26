Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804DB10950
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 23:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D685EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 23:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693092248;
	bh=ez2wxLYsgiGbBce37akhNSDyS5cvsRprw8VFXv2p/PM=;
	h=To:Subject:From:Date:From;
	b=aYyq0hedr6ACTci2ilO0Psl2ACovpYf5CM+L8/LjiFAaw/b1dkt4YHWO959Ozl5/b
	 sFgq33uDnmtJTghYfMW2jI/aicHRMDvy6JSzApBZs7q53qz6zt6bZqQRD6vUt2rLCJ
	 uTlsXx3ZH4vgFR8OiRQIkB/d+Eh9OYEn3CLbg1jVQK41tebFJxdCiB2y9FFyuvFFr/
	 vjnzOfrVeJ1wiM92nDV8Vv+u7h5dSEdbTM5X5TzCtEwYSNbGWdDwLF/WW4doKvbk3O
	 8OLA6fx04Q2I7g1ONZnjryz+LIoxqRFRkRtKG3VDM+XGsvb+Me9+G6kBObwumMggW4
	 6+5QoBpeBSarg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06B3C83F01
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 23:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169309224868.30942.10340543971697804088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb6f50c6aa9fd02ed6d903d63033ce13c1503fc86a2e97eac99f5cd6c18afc9
Date: Sat, 26 Aug 2023 23:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693092248
