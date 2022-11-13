Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18FFEA8
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76144C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668307854;
	bh=bN5Hz+e7H117NZJ9Px85eeb7lxbUr3wXWB3bjRdWxmA=;
	h=To:Subject:From:Date:From;
	b=NGnVqpJBE6HLv7/XlKF0Il4yHQ5OuKLmmH42kMcnJPWOVTUB0+TP/TJaGCZuPoq6G
	 fsgI+TJDxZzfZYYijqhjsf1sSXuAGjaW4PcJ0MIlVEEb8oFmigB36/1H7I2D1Jl+M8
	 J2QbxXObtOY3zUTZu60jcoiVVIIWMbBk6WiwfParGJcsKFq3FgIvuD1nVpKJAAZg6m
	 MfiOUh2HXebe6qx28tCFEOJXhk7Y5j3Pmlnb0u1n2ueJugMxg/nNWIXxKODItSqGBa
	 IATb+8d3sUHtIPZSxPm3FKdSuQOGqL9YuSH+CY/nfyXmAiZ2Jj/tH2nN799ffy1qnh
	 Pu4NDwkEiUIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A3D6C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166830785433.27538.16096619852407732312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8060bee457218bb4cec6716067cb41ca65104a73e9460bdf7ec7f25843024cd4
Date: Sun, 13 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668307854
