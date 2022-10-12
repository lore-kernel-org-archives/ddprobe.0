Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E3817CB
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75159C433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665555653;
	bh=LhHWMSXxjvo95OI7qF4xvAnqfDPLRhOfnF3g/s/BP0U=;
	h=To:Subject:From:Date:From;
	b=JSl3U/HYYMO3e0GZgVI9NbRug7sK3+aCKrEh4U3qz2iX5DEw3zsoFpbl+Lzz1RREA
	 bVNh2EWB9K9UfG8x7yAYioah8PMkjpmKOn4iIO1J4lmErIlEI8nUZoD/qYKwGA1mnj
	 FsX+YW/mtsJde+h01uGxkbET3bJfGnSTZrE5zrWaN1JiIwf5fNJb3UnHGzEqRZSIru
	 YorZiD2HRB8q8VVYHpDevDWNo6Vny5eqZ9MAeEGWGQ8w+z6FRSWT189JdrNYBojUPJ
	 wkYK2JbV2Wd9eZzY4ZhAeDLPJkxtOv4QbCunPygJILtEU0kdIQBjIc3Aa/HBF5R+33
	 QT7Kt0HjZCkjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DA8C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166555565334.12684.2790381368569883897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c3ca8c3c6afbbc69e21508e361d8249b717a55d4905cf9cb5d508e901dc854
Date: Wed, 12 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665555653
