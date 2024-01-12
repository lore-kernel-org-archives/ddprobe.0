Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA2B62D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rygvR03U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A805C43390
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705018096;
	bh=1zsd/zYcdjyNLX+5vA/nyLa55v3bjWVpkKwvjck4Zy0=;
	h=To:Subject:From:Date:From;
	b=rygvR03U2w7jLmtlKtqmu8eWhvVGFgPVe5vipKFb9qR8IPr/hi3++iVdobt1t0jf3
	 BcG9J9X/kuwyxm0xhmfAmkkMb3WtaFm+ie07plsv4ubgmXnYIYMiW99WoA/tr5OyZr
	 xi7UNx5v8pcNpGDQHZZuLCXnbboWoFEYPvaJB1OADSfkn0/J5T4yvhn5QLuydiKkGe
	 av7PF2sAf3+KtADnzfmCT3yS7SS6TyRNsQPRl2y1gLy2UqV4xSQ0+slUuj3QZUSBcD
	 s+dpNUfIr0ztZ8ellJ2bRD7W4utHZNZ6EzUg6e5Ohqa+VlLXWkpfOIHVhRpb2wqoSf
	 4K2CWU9t5mPQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B4BC47077
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170501809641.9799.1444004671452776763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf30fdd9d7676421aa855d6cbd4ec6b939d686d993edccff797f0859ac65944
Date: Fri, 12 Jan 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705018096
