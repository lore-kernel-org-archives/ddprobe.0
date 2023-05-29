Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28538D51A
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 20:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9A2C433EF
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 20:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685391725;
	bh=GDeabHRN8LVPh9UUywvs+xcP1DLxn95u9bb2oFbkbBI=;
	h=To:Subject:From:Date:From;
	b=qh+f3duUonEKrekJ+CedSYxlpTZUpLSUFgKH1xUtzHh1qUppeG5+affSXWHe+hefR
	 XV6uc6iwD+p5ZZw/pgdQMS3BToSNbTV0PozMwJ8vp/xK+ATW/2h2kzIjzTehwOyc1g
	 h+sXfTZTp7bhxeRGXB5diVwwdYD9hSJb0S6+cTJ9yl4HEtASCZ94L7H5Uk+eZHrc19
	 6ckASDYLuFflIVh5rJs2Qg2inTuMRpNroj9dVPrO5hCViTW0UncFipAkpkvc/o6BZl
	 0Rl/k5vceNgCEyhRAOxbi7uXymE73IH/SEyz1Me1S4DG2gQ8yK2/OwJi8LZYpexrLf
	 cgs2szM0TP1Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58B3C77B7A
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 20:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168539172573.11127.2633304080538485092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ff86f8a2d528a463853cf50099f5ae4c67acda728e49d4adcc4abfab17d17b
Date: Mon, 29 May 2023 20:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685391725
