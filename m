Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C016115DA
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70819C433B5
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667961654;
	bh=tOu1G+C0HBl09oKQ2A4AOfJRAH1vtOYCzyY0o1bG4GM=;
	h=To:Subject:From:Date:From;
	b=WbamrhcVlH9sLeJk3nn4cvw89N6PeA//pFimfHYKH5LlJR6kRQjGpYme6sfRRXUye
	 XaHNWTuKwkr1og2RxESF4nZltOzfU7nZu2YgKg1LKeF3yZfP8yZwolygWLAaLkPz3A
	 Zni+QUUgYM/odB2BbFz67xXYvTVSGvjozPE2EvFiU6CmWyo4d8xXEncZENrShdLCcw
	 e+KSwNqOlEw/k/Dfcw/iNwoOWIBkOxtyGGr+XBms4d603iElTxLaPHDof9nReNunKF
	 7ZXfod2zHSo+oesohEQcfkhr6x+SXaT95Ka+PKuKWwPZyx1eLLEGQ9Qug7ZNfkLT20
	 LH9BgXFfl0H1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561F6C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166796165434.3426.3824967808646065062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1582f0585ff5da0ca0ec8bf8c364d1d1ae88f3f8e8dbe6e7ce5835fdf7e9ef
Date: Wed, 09 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667961654
