Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5233110F8
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 06:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBF3C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 06:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676183045;
	bh=qhpt6y/UynTw3l9KxKmcx+OquHWrHmB4c5nOydZxKFs=;
	h=To:Subject:From:Date:From;
	b=I8en1UodahoIVy95qNQ+yZhgVg+tGhaBs2zb9DyVVIoL3IaVONuSu5LpmZuk9FzPD
	 By7rDhzqs1tRRBk/djBi6lkWjp2LPogvOeW762jzGcttWoTWhcYc/IhfUpey5ykPUX
	 y5e27QAxZk5qyIzIhZPXGkTQxX4FypxzbvjWmWQ6YfyF+Uzub4uHcNZwdI7QGW4/3I
	 L373qDnZxi+z2pBbO0wlGYUUklaH7KKAeKcW7MtkycE/zqiqhe5E3/HrkjUfGCn7iO
	 DVbDcf9XwpRKPCDKFxKIhTgYmgkreVeuzIlUlVz3RkMYoh02KMI3bXfbiDVZHcu2on
	 E72x1EXvyxPpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C082DC05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 06:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167618304576.7325.6305028033918333317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbbd1b40ad6ac70561544db90327ef429e9364135b9d4cc0722ef984c4760f2d
Date: Sun, 12 Feb 2023 06:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676183045
