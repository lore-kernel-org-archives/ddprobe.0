Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27537E
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73411C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665235853;
	bh=bR3Pr+cRv3p2MpjiCQJeloyYUOyf0+uU4PM/9r+SNrw=;
	h=To:Subject:From:Date:From;
	b=pzSvbU6+FoZwGVR5bd4Nojwv9DpiTmtxleAJjNWL4egtWsYRHejutW9WPYU25eDsF
	 DyHkJbamlKpettAnRQEC6bIaBJD+bzVNEoNLy+ctwRiBVdhaLvFoJPri9eMbQWsaO2
	 KrLDicYTooGb0bZMGC4g4UmWVXYrg5xB78zVoF+NzhfmLKiGNZvbTq7Sfg3uP4c+3o
	 d531YFgaHaLRo5InHQJy/f8VXpS/EY1M/uqnP9KqrOx8+TV6RGfqCBgXT80bO91BQ8
	 Obg0uoxbMaJVyVfVvfc0zmDEL09Ko76MmuBKQHEFGi1ky110g+vNYXzHqlaLdNI6o/
	 MXkRk/XUcJsWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A669C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166523585331.26854.7379866816691908948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90487116011654ed8402e77e69f120fa829b67bd68b017cd67e30a4cdd75ef76
Date: Sat, 08 Oct 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665235853
