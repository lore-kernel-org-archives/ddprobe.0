Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D0AD30B
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUoNlb44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E443C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699941496;
	bh=23cXUROiQGFKz+c3CsLTpAxmA6f2LQzx5Tsi+4cdgw4=;
	h=To:Subject:From:Date:From;
	b=oUoNlb44bKQ0gW3wVZ5sPoAPyvX7maDrJs02YzEjYn65uAVW7jdXXJVH5wOitz7oo
	 ZxeNhsjbq+IyR43dCwoBEtHTT2aFsPtiFmEaBAbY4eerEZeRMf8d7HxgrBzralVWbq
	 06wLJGdSkVI5w/G0qCbthKfvpb+fxivVx8jjS0t1gEGXs7D/Ddd+zuehXK4mYujBCb
	 NZ8z8CaZNShqRz0o9Uti9AqEhvS5vCHN8TNWxsChKzQeDYuxmH9564mpS6FR1kpgoJ
	 p5OofSWukGOcAXpWH/e1nRtAHosrWl5r1AUYE6FoRvWNKq6vHd7IQgog0hpWudb8xI
	 6nqg4fX2txVbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61DDDC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169994149637.5045.473140199625155485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db809a9c068172bf807e432373720a215be44dc35318e4cab1f829b591521c9
Date: Tue, 14 Nov 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699941496
