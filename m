Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E277E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E3C7C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672535487;
	bh=QP0VfRvxiBAVusg23xVG14WyfrCBz6EQhthnmu41Ncc=;
	h=To:Subject:From:Date:From;
	b=jP2xJguiKOzlR5JFwQNYBxRvpboKMKv37acj5WwXl71rpoZFH/EbrffJi/DxUHcjw
	 qJOGEeML7CpoNZeMuuh+nqVipFkRpOZTBQZ04OFvq1h47ENEeZl9/XekJYq891oj0C
	 grfxvo2E1GGBO5vXpY8t78d7MhXC65jgekUszQ8iDafR3s5n+izo0cVmd7cKFL/tIj
	 VTFhL1pfcjDo51lftp58oznnqPWd98obrwEUX4P2DAUQR0Cjk8yz6QudEYuJz/r3uT
	 DjMiO/m11Qq4aOo4HNsFlUi4qmH11aM+goibgYLHHCtlf45sVdhf/N+bgBdb+fr+dN
	 sjrZGVXo/Q+Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6482AC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167253548738.24633.6343426508377765744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079b02345ef79ca9eff9682b62ffa8b9f2110a462aec65706e1808c6e738ee7a
Date: Sun, 01 Jan 2023 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672535487
