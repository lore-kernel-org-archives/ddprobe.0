Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5BF33CC
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FEF3C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665425453;
	bh=0W0uKm+KZ14d5PomXWcFkFKN771gf2qMt+IIS613cwo=;
	h=To:Subject:From:Date:From;
	b=tD+j+YU96jH0w54pC5bwZuLnosfG7Lyrp+ISJIsVsT/J4mLzMG7Ym/lHVGkM5cJTr
	 LYhUTWA88dJ9pgi9ctJpwtyJUSAg7IemXaCF2rK+onh5mW0Xle/rB0f/V80Fw36QDU
	 ke/Fl37QVimQRlaUXK4BP9rZ5dS7PlLYm/l1/mBn1kaZvmYAoLGm+7U4kgSbWk7kdM
	 soBpfuZsSypNn18dmI+sWD5fa0V/dHoukrx6cd+ItNo6C4sv8FBK/f9+Y3IwV5pl4r
	 Kf5Vb7jdjnbPYD5jSDVUSSNgDf12CwCKEZUoCTxKKXpb2DA7Kz6MiY2VsOfVDJz7Jg
	 0aFnXa2zlIARg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55644C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166542545334.13572.6416948889801190401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366cae183449e71fedb7dc1b1d472eaa042d9e302ea7a6996383b40308f9dfec
Date: Mon, 10 Oct 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665425453
