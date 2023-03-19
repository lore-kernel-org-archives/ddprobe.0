Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0371846
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 17:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE41C4339B
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 17:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679245505;
	bh=sbfHL8xqXu0GylsdSzTZzEk2H2Huc68rZjovvVygLW4=;
	h=To:Subject:From:Date:From;
	b=RgkL92d+jdZPBFEzwRGjlcLq3lgYl4OnQtUzTCUKlkxMEy8EjAurcwtrI0q8Dd+gK
	 xHIQrnau8arFKYw/C3zeAemiUE/D1/hhhDuIZ6sjge+wLaMpRCkDyTjlfij/zYOLla
	 au4915+X+xg3m50ng0VBiGoRVGlTA0Wuu5tOoGc+vQCjczbniddJxU5NcX4E0eKL/5
	 eLgbabAqDTWzWC5CgdZu0D6vto8Pnx0Ihc634FkRyC95AJzsjkAoo0iw/mHOsnzGXr
	 DOnoWkYBWmJmBMQ6ulbEjpbzftLtJrWTORz9hvPp7M8Tx3+YBx98g6ZdpBR/a3WM2l
	 WyKdA57iKXvuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0782C7618A
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 17:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167924550577.4413.15320103933756058360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23eacd2d1f06789371fb7e3b716c1d31fd933b6242d8252795a04882a0abc08b
Date: Sun, 19 Mar 2023 17:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679245505
