Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF911A601
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 793BDC43143
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668099054;
	bh=gxbXxFLGWAoMWd2jM+TjdW2rjYaAl/6g3dBvivSG2ps=;
	h=To:Subject:From:Date:From;
	b=EDoIn5T+juQH2vmj/qs+ez7t6PD6fty5U4S6/oO/spH8o78m1h6GdXsMfRIK7zriI
	 vOVBAO+Jh6Iu5oDbO/yu3uO2qkOrJQRSw6plJwRS5zKquQiXFZy9915NpCB0Xxkmol
	 cQI/FX6RxGHFcsP0odtAKjJisX8idGJ4BC7XeMaxfgcLcgPRIJhz4e42M8400svvtO
	 1VlXlm+TU/pnKgqWSFtJaexpRVF0NfQoM77oeMnZwjGZ8kQiddq2m80QLYb6u2g5ZP
	 txsrbjpFGV2MP+RMBDy7axJJM6CoLreQH7ru3pcP+RpgYj7iv+cLPzVw42FNqkwO0b
	 UdrtngLFVikpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E743C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166809905437.30996.5840775416570559805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac032ccb270fa5418e5d2b6e018dbf5b323410e71b6c95f35834f1630a2f02b
Date: Thu, 10 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668099054
