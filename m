Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADDC31367
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 670BEC433B5
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666564253;
	bh=QkfRZ0gjED1gFOwWsXXYQyjKqfkfcKJDM+oIVJJrLYw=;
	h=To:Subject:From:Date:From;
	b=HKQgEB6UVjJXCWduXdzds6JqAJN3x5e9Urfm0P9toXzGFZSO4Fwq1I535YxocP77y
	 GmpzERzetoghHWIk6QFSyPDF7xnpHueEYfGj/S0Ph33yJxLBRDn6RJKaR6zrvv44pj
	 Zth6YFqZCnuCtZ8MpJiwdj0Lzh1V2qENm08NTnTaHNdNGHgvw11QZnLWmlRvHuwE+Q
	 aug7h+Bm1n7h+PqtUaE9tsRXZOBeZY3vAuo6hH3DXLvq0f7TfniOW1oRUcfeLCj/DG
	 Pp53qznMrKjnil0YVWXY/SA9xrRyGKMoxtZX0OjFHIJjyqwylSM6x67H2nibR52XD0
	 1UBS05En1/2ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E64FC433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166656425331.28328.2656539784387678625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71d846bc274a4f5014d695a04dffd2178428dc3e1842541389e310b2705c630
Date: Sun, 23 Oct 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666564253
