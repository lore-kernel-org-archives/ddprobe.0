Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED103E46D
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTaCi9M3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A59FC433B9
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700658496;
	bh=JLTfC3QZHExy5EbMUlZ4kiAtRl9vPFD2LQ6Sk3CzFH4=;
	h=To:Subject:From:Date:From;
	b=rTaCi9M3PEhOlnN9rI/gNcAhHf9sl9Zg0Z4b/ouT3RBDqmJdyOdcs/qmSZLCTXJC0
	 Vmb9mogrKWojzJ+I4gjaFER6qlHexzr78AECLQA/qBcFBDNLrfnvUZtDK79IKrL3cg
	 kk6p600gdykFUO0xR7AVlNb/UP2vnG/KnyWDgt96bIfItCwIuYeUogNmTrwc0Jy9Gn
	 K2FDLJ+d20LuWNNLJ+srfC59rQCqH66xRFXj+K5kScaQDg+kERXJezFfMbhDTO04dY
	 BbdGMxnN5xdf8nVbA8xxZRT+roLE+MR52w+MvMQCBWHWrPOb+B5DFnj94pPNCQZsFY
	 BL7I8YRBwS1lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF62C61D9B
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170065849637.14779.131956699407421250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9f1be857b918529e407a3efd99dbd4de7e3ee001c675f8c6a90cbd0e60bbc3
Date: Wed, 22 Nov 2023 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700658496
