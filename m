Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DC8A42
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8946DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670636487;
	bh=k6h8+p69VPJZsg+Fb1p/T02V9oZRHFzLWRj6eeO8wx4=;
	h=To:Subject:From:Date:From;
	b=Pphm3su7BG7ss2DJ4LyyGuRAbZAbs9IHPptSGr7csEsiioL7z56l/3h4e6zbkYoGd
	 +INSUZTU5Y/nLbKaINy/atYMvw3B/usDf4stbXsAj1299bJPBS7eyET+6aGB6vrWkV
	 NROcJXRSIpsJP+v5sut336iDoetn7SgEPGtrEipqPaxT/YMrAw3n/UlhE2rduNA29i
	 mEKToZjI+rSK5hzIgR+3btl9sJtU9Kq0BXaRENws7rFwAzf8URJD8Xp3hgl8Yx+YOA
	 QRwFktM2ZWshI/RFF0XxdY67tqqUttgDSpLGq0qsDP8ceJHTO3L/bAqM63FoxvTw3d
	 kVZfw5X99IBeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E1BFC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167063648743.2407.2777140156316992865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7f341160bcb88a1d10492c9290fac6d6b1ad0b221a08a50c5b95516f6886cf
Date: Sat, 10 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670636487
