Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257CB626
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLEhHc1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FF23C433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697847496;
	bh=sqYYloJPyx9p0b0F6Ei1nHa6ucfP2ZTUWwUPDSpEWok=;
	h=To:Subject:From:Date:From;
	b=lLEhHc1ucwMsB0Op1BYH03D0Ltv9HQcByPHDjiIFxyS15DMav2NMS54p2GdaUJImI
	 nViS1/LvV1PayZknzbIwJyW5F9pXZZS1mAz/3ZmNei0BV/L26RC7yPJbZywwxvRrDe
	 NLAKwehvR257/rDuAP3qjVFJTHGD6If8Ulw1BjuSOC+DNKiIgft7b5v3QPMGBgUnaN
	 m2RDJ15jR3wCDHN7uGcdMZwS3VpjBbXIjxFZYOSsI8ifY7q588vW4ymgbYwj4bEioF
	 EP5hFmpJyR2KV5Kdcw/MDj49l3Pdxu/9XQF2O+pOgAyahq006PImFaHMo1QYcB0PNO
	 ukQ7UQ+I8eCcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E2D4C001DF
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169784749644.4889.8614196752183991314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea90e0e35da67f0b4096fe4471637b1ede45c0ac37fcafff4dceada915c6206
Date: Sat, 21 Oct 2023 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697847496
