Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1DD7B
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 728F6C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667077854;
	bh=UEunpzUlqa9yVlreKQILyOMVJeo213PBN4Bi7Rka4Qo=;
	h=To:Subject:From:Date:From;
	b=p9L2bk3eSB9rKjEDq4O5ttgxyL3hvqavtifoptJQJrX3J8501Mc4Fnx26OEyvALHg
	 w4ZYITAs3bysOaisLwEiBWPv4Lt0aA6thrfYSkO2eS0PaNvYi2cVUe7xfJp8gVtA2t
	 XiiocVJYWrEV4c1ob8Z4rXDEB2r619sYnME8OZ7RTAGqzGTxDePz2oQ665R6RrZ5mN
	 xPP6W8v0O8KFyKjURZOBB5wKdRSKs4USvp9kIYlLgWFZ8eAE7kdeMIk9QIQpd/E563
	 QHdlevEdjeqqNIG613pc6s7HEcKGqdU2QIIR2UlESqGx77bkPoWOljxuCoHhb64Plx
	 iQg124lzvODjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E53C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166707785435.9179.12671485306108633885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3227453b3c8bb51b87dc4ec61b3a5b45e433d0d9f174dc9fa8d844a4ac54c43
Date: Sat, 29 Oct 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667077854
