Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638BC1E522
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 23:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9ADDC433C9
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 23:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690844528;
	bh=0vEsfBYsmu9ULZ8Fh0dbA8stMd3zwpyw9894w7kbx7Y=;
	h=To:Subject:From:Date:From;
	b=cWPflAt/i85yTqMmzWpWJNob80J5kpL3llEvR6OKPI/2+BCEbmkiW1vT1OfXPuar9
	 px3JgCAhhGFABDn285mFFHciJMbiPAoD1ztRJDoAJoHNhPGUJolRC/Uq1MOgWz6WSZ
	 Pfaj+ys4eVAY5Al2bGUA5GgtvSZTQ7pbXNy1q40bLOH+2uhebSOoxYo24BW9VL8GyP
	 giZU2ACe2X7S/lXQnHYaGw7+WsSDlOAY+q81HBOF0DWXK4+7wdsFlaAApo64g6/dS0
	 t3Gc1XN9akW+NJHclsDQqH1oahTYcHct18OFMhBkPD8Nu0tvu2p+/GU3l3SXlQqHLk
	 ifxHoQUtcHYpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E46C04A94
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 23:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169084452872.16883.16592827454225852386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0b414716407db20142b3f7e2c5b1298f7cbec9835c061da6fb30d561fe681c
Date: Mon, 31 Jul 2023 23:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690844528
