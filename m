Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49A82F4A
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A05C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668886854;
	bh=BwbiSuu2Amtfn9N0CUpGaLUy0k9EYqs18bLmdHCn/Z4=;
	h=To:Subject:From:Date:From;
	b=Ggs0p3eyA3gpIqi6pP0M4oYUspOLkDw60vkrxb7Fl9dOENQGIuPTDlDIdX4z2NMCM
	 1e4SL+OFzU7Br+8krqHnj0yApG8ZivArcAMPzEs/R5X0IE/PHJtjqZMESWKu97FhUh
	 GIrJXaeRPuQdh5wcQVxdMLigszN4zH5X2Og9fbYZZJ/w3hDun+pgR/RxMT3rrKsCIa
	 /hkTVLO3cdh8Z1WL5GrM5DrIHzAZPOYphMjEaHBcTp8JQavdFr9Ju2yKiT8jnaYRLK
	 N5YPjETgVt59w9B0JHrl1Q37mG8XqSNKt4Rq5juDaxcaz8QONRy4MjwEfX2CLq8pPq
	 N7z8JJZ/mz5tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B744C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166888685443.11702.13405324737806509564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd31ff1e57a8fd14933d250685980ac28715a91d76eb9cb6eebdfd04592c7f0
Date: Sat, 19 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668886854
