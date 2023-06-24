Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4D57FC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 06:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07DBC433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 06:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687587788;
	bh=+StJ81XYNdOWQQiKHXmsVe5TRNwAOPrZOvlGIJfnPBk=;
	h=To:Subject:From:Date:From;
	b=gV2GkfUzeAufisT8fxPZNuP8t4KMA9Vw2eEMu+Ncf12PwsMwsgw7F2L3k38XFXzVS
	 IUO/Wo3c/OhnO11V7cvsQMLLSNp+7OtrCS54cFESNPybG3eZllUf23/t8v78QbYy+j
	 FXrY9bvm7RXN97R50l/jrhqcUDlOmMgN/B1YrZccXo7/KUlG4CtJg6IouoNX4YY8+4
	 UEjQj+EnYNiYISdWPjZs9JXQKB581TubsQzQRJc8RgSyoQbPf9+aS1q5iwlzxW0ksx
	 uzR9GRmKLk8/DmvanZ1aQv1j8SsknvB4mMo1akDWuw1WfuaXuKNTn9xIh6yUN2Igmv
	 NUCia1lBuvfTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38BBEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 06:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168758778868.25672.16174073499004651959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210221d59eaa3911a83c19a1e34b8541be4a6989bd28376889c7fd2eabef2dc4
Date: Sat, 24 Jun 2023 06:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687587788
