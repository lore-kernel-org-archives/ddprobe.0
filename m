Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB3A7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70827C433B5
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662928253;
	bh=+Vw8DNL/6FR+qQnpbDNflWemjhzGOmoyCMTdP1WkgxM=;
	h=To:Subject:From:Date:From;
	b=CpOAz7T5+d06TSdC2d7oWqjXuuD4NN9tPnnIpEHpMIDY1leiviuxvpqLnz5fdx41i
	 lIDM/nf11q4ugff3xVlQtwLYcdHULx0TRFjvTZPvabakZ2BgHME1slW6wPZmtSq+lR
	 3kOI9bxqNNGP56vBfWg5f2RTf5oEazaTDWPi1tWagjhFK5cOLlEIonep1cmQXlKsqI
	 6Ue9gzrSYPaUqmeuiGJYvGsXVm5ubzqCemBorqxULsqFuVAtokYMBHVXPuWdfriraR
	 wgE0yzkwOgtRuap4ngd4WoM3657LPGmsL9ddpOWkj3xMEkgMDM/x4Z/Gc1RYStben8
	 PFq0AgIxKBCbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5416AECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166292825332.24162.15120891889297173580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b55637d112558120a25d18cd8ea2bbabc851737e51bfb8929183d8f3d4f33a
Date: Sun, 11 Sep 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662928253
