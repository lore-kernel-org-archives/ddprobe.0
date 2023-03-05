Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2BC23CD
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 10:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3517C433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 10:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678013825;
	bh=FS+KDw9N4zKmzWtIGXpeW1VJt7BHjcCp6y7FVrhqgr0=;
	h=To:Subject:From:Date:From;
	b=Y2p/vBQg6at2BB4dVZbTlNH9TijeWCyC8UQCY02AGtLkZeljSfHI+oZX4Bvu5ozpk
	 BlFswTqt+ic4WSQccgWTDwHUha1ER+TjqeFtU7YXxy4kJo+WqrwolfHyIMY+0bfGrW
	 21uSuFOJ5WpfxokAy8/6S+viPwMZMc7m2ZBr1Ja/K7O5+BI3W3SNtz5p/vCTK+9t4I
	 UhJt/7Qup7RfwG1RhwWD6mnm4ZViDWdPdhNvTdTB9CVM2ppH+99YULTS7aNz//okOA
	 a/n3DQySgvRNTTc4A0L17XGmXJtmzMtmNXGSzxtAZf33DiCQCDyGRzqC8lc87Qn+k0
	 EW78e0AWBSXsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3A7C61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 10:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167801382575.25421.7106211961844983214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4be68a631abf60022c5391327dfa687e509a71a59cc6131575fb712264b25ef
Date: Sun, 05 Mar 2023 10:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678013825
