Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBFD562B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E1D6C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668948054;
	bh=W3MU0Q25NYD6UUH6fbsuCW4ZsQ/W7JOw9iD5yMr9WdI=;
	h=To:Subject:From:Date:From;
	b=B6MJZg5PPBWPj9ckIEK1esMVou4Q6EBaTr+cowod61YddC0P9oiuMZFIjnffLRjEW
	 I/MIsLiQcDwsPuNDmFTj2NLmgOk70ubvpeL2piaBXnkb1yhFYd/tkALyZTRqJCPgqV
	 wg9EzAFfie5XVg6lTPZtastOwiKO1u0Gr2Rd0u/6MMC24jsaQi/BRuFBI2IvSkcaaU
	 lEGP6QwjBa4x2wXcYDbBppucVhUCZHgELtmK90BMWsI22/3AT+44WxFDhVHVygYRq8
	 uzHalmhLuLIJ4/2qxVCC1BL9oeYrQNqhSqR0HBF9BN7JHJ0WrLJ8aMH3al5zcy7z0T
	 s98yPlEbriO/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F75C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166894805436.23262.515973449884054348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e2bc56912109b088d386f190c388ae2a36cd8a405db21a67904ba45e4a243d
Date: Sun, 20 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668948054
