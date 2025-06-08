Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF09D33F6
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749351594; cv=none; b=DNU3YihTjzcTwCwuicQa0UGS5Sw4j/u4ug0s0w+4BPN0fEGcpL/o5+3AolwJUXJKh2Vf/cWbdM8I5EYb9kl4WwGeFKA+ZyI+ycy/2PSXstRglCwaW/ChIoS1ZteaibKOTzaQMKW4g87H8JSUfqzLPNqC2AlLobiiB1C/TEwHVv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749351594; c=relaxed/simple;
	bh=mUgPlnq74ahhe4mWIlJvYFxmeiw01UNNHUk+9jdKIiU=;
	h=To:Subject:From:Message-Id:Date; b=YLJzUKP0Zt57gi+ZUpierMJ/3aDWFaEx0peGKvJjaLonebnCM/W+WgOTLQaEWO0FHFTeY09be4UVU0BaQFpTx3w3ktmWB+RpML0C4947QNQiAuC4/g7RuDLTSxjceyYAZHr7YLXnxiC90eLscUTr9Jdn7BMfSQgmAm+cpe2T1S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ql5l6ppS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ql5l6ppS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4083C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749351593;
	bh=mUgPlnq74ahhe4mWIlJvYFxmeiw01UNNHUk+9jdKIiU=;
	h=To:Subject:From:Date:From;
	b=Ql5l6ppSmhUqzNGJkJMuzY1+sw5wEy1nCIfLgiVZfKdJnbbQUEMYSJR07XfcK8JGc
	 MNH2WD+K1hTgPnYrDYge/aZ1UUVcx83cAGrT+7cj9AV1NvixjOP75FSinkpC9lXCxw
	 6WGBwafTSvIdMhH4Xs/fsyDufJoNjoYjhiihx6WdoK2TQXqbiLMwbck+vJIMRh/nvF
	 MpG7axKoixC1GPHMcMEsQhCf4xFk8VJ6b2/VWCNXXhYEzaggeSEgBt/SCtrTKujhO7
	 GL4Ulu2PC4QreLyQoFCnyKN4D42+ZPI3PcpBgV2UhZyVZ7eKC/ZFJv43zEPWCti/Mk
	 7Lj2xG/iDNgOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942A0C5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935159357.4118.14093699626079451062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f895e8637e105d2a509090f9c4c8137111a4e4650a588ff7c2314935cbf6b0
Date: Sun, 08 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749351593
