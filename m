Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289531C2A2
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAXuVc9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7966FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700687896;
	bh=OjJOF7tY16FXErC8VOtTXC0dZjglTiLVTT7jb+51ZsQ=;
	h=To:Subject:From:Date:From;
	b=UAXuVc9lCvibGzTLUqO5YM+H8acp3RSX47eh1SU/8/8rYPKbrhoLZr6wneffdyHn9
	 dxELKoLvaov7y1lPsmTZ8nOiJTjOrEqdEz47FVPKpYzFrqi29S/6dfY+hipeOXFsXo
	 NGzFUZ4jhoUZQSHjno9IjfNcRG0tnWVj+urCnwbBlXG7nOKnP9K/sf7caTZLk8kMgY
	 akG/+w0AEuzbOzrdzYIPcLkohr4WitQoJAs9ycryzVG8+sk4PMpwJMV7Qb5ONL9hdA
	 0DgDnlNhjVGn1I0wxo6FX/hCO4fQ/TO+HxMpuKweC2kj8MgUIdO0lD+UA62mRN8nqt
	 9HpPJpbOgg4WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6057CC61D97
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170068789638.13850.251277835962320647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8238a47476011d98fd402e9638183b1b5de1b5764c02239047e42aab23e110d6
Date: Wed, 22 Nov 2023 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700687896
