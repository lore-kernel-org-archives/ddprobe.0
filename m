Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FAF7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 10:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C97A1C433C8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 10:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690624928;
	bh=QbICMEkNOL3vGyu3o1sBWKTsirfZdTjVyWR4Tpithb4=;
	h=To:Subject:From:Date:From;
	b=GTCO+LYeTJOVvIXluSt0Pirv5KgeUiTkpzljfEEqqQ4EfL+L6CI2Q7x6wy2uyYXwc
	 zNQqJFc2ZXA12oNNzhteFMrGpuvCC79f9D1JBxknzMg26q3e5/ndTc/yBUzLgrp2c2
	 M1cRPyWgthxsRxwxwIDPOtszmEJElClj+XlBJbddnA2zMPoxIlPzBvu+jS82NPHQse
	 LP/QN+AaM7/m12K7XUlDvkHoD+3Z4dATHpKOj7hvHmdUImDdU1V8rwfrlamqhJtiHg
	 fTBm/Y15RFj6DU5WN496dYA9GAIHD3VUmMDrYhszpcxLtW8i4gvy7kO5Y/qNzYoLdu
	 E9wb4YVCANuNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F9FC0015E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 10:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169062492868.29744.14351017884626920758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e456fcf949ed6edc1edac90c8206b9e80dd79e63a44bcb5082033c2b35e71e0
Date: Sat, 29 Jul 2023 10:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690624928
