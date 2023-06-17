Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4350CA945
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 19:20:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD141C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 19:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687029608;
	bh=7wy0uRT2AFZVeWtohRCEBKRxF2KunZ7jWrwOSCw965I=;
	h=To:Subject:From:Date:From;
	b=oSx0Hv3FlNlnRRlfZ2Em92fLA/VgbLgOB/mfPaUKOcjBsMiq2PN3gZpcPyXphixbp
	 gBYzNVT3bVJxK2pHTjwAHN63qVsOQwMN4vJ5qjW7jI8hWXc/Jhekn1Dx1YBKgkbKYb
	 C6X3z8D6xOFRM4wIERxb87rozx+KJD2hRxD9OlHWcYdFXAdOrvoEy8RCHFD/fupleG
	 PQ7FQdnFck9V33SknNG2i3L31vW4zEolLvctFS+BLLhxMqbrNKfsL67NnDULFGIycr
	 c7tl6Vb84xfc+SvmXpq+hHoA+tkz7Ph65ox51q7I6SDLb5ZwGURbQsdsf/eY/vJeRv
	 3ksXv7PmQZNEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A343BEB64DB
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 19:20:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168702960866.24703.17055741852539924487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345d8a871c958e5ba834680458510071247aae2ff49a33e164bae1b6dc4acc47
Date: Sat, 17 Jun 2023 19:20:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687029608
