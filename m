Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36952117
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 864BFC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672006287;
	bh=b4aR1XtebCoUxhK3xuun1cYwgaMrRiKBD/pXfk1CP0o=;
	h=To:Subject:From:Date:From;
	b=NsOwNK9yN76kMvgA12rohmZpvGO4xpp6Q0GZ2R2G0hBtnmj1c7s+WXpSaEfnC24cc
	 3/KKJ7aYTbD85+NwsCMZu1vwVgmcC67pgrLM6PZ2hcynd+COF0MWWeGH9TWlnIu6Uq
	 gUrCHMMFkLwojJmTxwVpTLx5U9a0IzeuL137wFcarNwb1yY4kU1dgPc+PR4KCirthH
	 zve5CqGrQyng8vZijBDCsAY4fSuL534MxweeAhn6emynWmDXdPh7Oe+TLa+70NxXZl
	 8S9XzDXt+Pq5ggiCPG2jIWTBN2UbsUKFrhXImq+Iie9P6Rd1mw57+bncjVX+xB8Oyd
	 gMZ7TJsaljzGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A58DC4167B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167200628741.5010.3168286062579871269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6610ecbb53d16d2419d5587bbb57828c0275983e7e885857b30b2125dad8d7c7
Date: Sun, 25 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672006287
