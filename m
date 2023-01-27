Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C8728EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 12:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6844C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 12:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674821585;
	bh=VlffqRIwqeXHD2b3B3ffK3t/TnvQjWUnm47IgXELmMg=;
	h=To:Subject:From:Date:From;
	b=tw1k9nDLFUGh3m7eLpn5GECzb2djxRj0+KCw1Yz4YjDFKK3bR64buvcYMMW7A6CK8
	 O6mYUM1ibQTPknaJrjC78e4JvF09Y5nAAJINj+3+W9WqErr5mRDtHtG+OTfKKWVnaY
	 790Nwo0Bj6LX/eEU2Juv//7O2pmIUAkeZ/sQmnNZIAjFXu88ceS4Odtfhu+zC0UxMY
	 SoQLhq/xgpQwP8oIbHQCeqRK336LDS/2eliGMsj3hunA5wLcI5nvYRxJy4o8S5CC0U
	 0j1DJWPyWKvT9qy6/lYNfDyT3rgIvZoJhsGgk8+wxp3h2tNqfgMFOrOhkMiF2K35BN
	 s7oGwnKihl1rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD59C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 12:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167482158576.6321.14442523932117992902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6dcf38b64465388c2803fb3bd4688dd33ff87c719fa8d68a3f4571d79ace88e
Date: Fri, 27 Jan 2023 12:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674821585
