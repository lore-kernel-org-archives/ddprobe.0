Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75AD2199B8
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 20:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMHK5cY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0459C433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 20:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697662093;
	bh=aRBG2w2sP0IyMcu5sk2/2Ui4OIF0+Le74WvMA0N/Fiw=;
	h=To:Subject:From:Date:From;
	b=MMHK5cY6wd/hYbJZ6m85Qrwq6WQr0McByxM1pmzw+vpucECYRQV4CObBKDjjgwwnP
	 QulaNoNdggY1d76uHh/5SgdcbWhuW2mFDGI69pIhBHFA2H44CYGjXphMXyGjfXh/QC
	 um3GGkiBwLRecx1APydwZoiASwrI0FahrbUhF9oI/VIrP0HbhlYx0QGi1yF9dXvBzB
	 GflcI1vFIsFbqF9I4Fi8NZ61Nzfby7g7xZqhCVD+u3uuXOko6ht6trE4+9UYrdyxP2
	 NBDMAEgi9DoT8J3o/L6j38oi4BH6lhQFdgfWhsSCKV04xofSgk90Goj+TZRTR9WM1F
	 JWK+Gqk6VwbKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D178CCDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 20:48:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169766209284.16972.3213340499391494698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c9a4124412480674ea20f4ca4159532f6b2e6d87ce07ea60984e5d05087c84
Date: Wed, 18 Oct 2023 20:48:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697662092
