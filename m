Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45948366
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 06:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA75DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 06:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675060385;
	bh=BUT9kp3VzbWh8zP8BXvA2KvopKauqVm+uUxKfiRNDOg=;
	h=To:Subject:From:Date:From;
	b=C7ynsxhaimzznZJEQY9s/JtRJ36IEAW5rvkiGXqDRkEB+gdxwjyTXe8kqBHVQhSr2
	 LXV2n4qjuUfJvvPMEPCaSaZaKvmPVMKfT4YEj9WqG5KFAXCAK6wUvjGQZpcK5wOyd6
	 AG01Sljxhn+Q707ai2g7H333MOW+sO5dpNNogIJnmz1/kTHNZnjh0O06KyQri98VVC
	 Ez3XJ3Fqy5x91EOmGUElgrPzHrO/0B7V1edysGcS/3A5a2PNPaOeyY3kVsSnm1T7uc
	 PQdkoJO/vf43Xq9XyS4qBY0yhWaeJutoLUnLbNDWuROvgNO321yDcKsm33YSD46Uze
	 5Sgdt9lRIVxAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEAEC54EAA
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 06:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167506038576.29173.2251108394763238025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39dbae408738c88d0b54200544ee337b7ec3519109abfc7ddf47652aaffdc3e
Date: Mon, 30 Jan 2023 06:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675060385
