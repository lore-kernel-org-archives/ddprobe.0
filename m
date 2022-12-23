Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13E828F6
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B60FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671778887;
	bh=QQon+7h/ZK1BHsZTKOXZuZV9CEw/dvi+hDCifdgHDuM=;
	h=To:Subject:From:Date:From;
	b=H51Wbk/we2giPZWwi9KQ6JNDdvmQa2nrXdCGgyI8Q/D4roPut3tMzye4dNKUcshhF
	 UWyR8H62+neSiu4VWOOXuGtRecbovc7JXWjUF6Qa+/OabQDcuV2QEcHgv0FwRmBHa2
	 l8Iszx5zv05TZg9VQuSbOfCU4ipXp8XG+5nTcCw8PA6glwHVaX0en75C+K3A8Hgm0Y
	 hODakQhdHP3geM75Q9ZA+wa5dqX2ENTc/o/C9kpWF7/blbZbZCTL/C84rlZ7FY9bLa
	 CqPgzrnDHbt2xR5OJ0/K4JPvoChOX9UYId6+S/ZPV0FN4jntCYhn+4BniganKu4KSf
	 Dl9PeyKSUjpzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA7CC4167B
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167177888742.20168.17057839422474092771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05868fc41593252e153815bcb2e9779e170fd6280b775d44e424e00a43cd97b3
Date: Fri, 23 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671778887
