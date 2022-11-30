Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE3D62A
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C2FC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669790454;
	bh=o+FcRQF6NJq0LyGR3XF+0DBu7WmM7i8WWgy2OIRkOzE=;
	h=To:Subject:From:Date:From;
	b=RBGB+bYMfuWoPVoqbBrA4UPSalWMHEuueZMG8IOaRo0EqiskFUrxMm9RccbksAspM
	 ZRO1sa/vndPmDVi6eJ9HAZdZALaIF6dj9jahYHuhtJTxGlKgr0X3Z2CBri1vES/2K8
	 CNkUr2rkTKT7RzPUnSn2FZ+dugXYlXpePiSjNtm/gk4f02W55SJKMFWgHGJVZmcvI9
	 wOGvMUMUFgXdgTtcvB9bW0bggA596RGmiD3pzvTmvYn8pwSc7Scf9uLWLb/mybn0WX
	 1XYyXGWAOA1VlKgVa1133EBYzKjWB558F0zNqnOyn5CjCJycsBpQZ8qnwmmzpFz6SX
	 TmXRc0I/s+Y8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D0CC433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166979045433.28235.3131930784657973383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d85647549a7d5b2a1814a2cb880f2df60f5b8dccebe00f69727eb3c3a7bed46
Date: Wed, 30 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669790454
