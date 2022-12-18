Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DD533CA
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81034C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671378687;
	bh=CbDDr2nVmOWwQK3OMbmmSykOIQRDqvbK1jucQYT+Nko=;
	h=To:Subject:From:Date:From;
	b=ABFCyVKbwhNz4CLZMT24Wxl4V8AY9AQORTqYrc+KtsNTem1kiEYXGF9RgCYPV/Zv6
	 /3naS0RESbbmuC5532hjr99VbKj0TwGtyZvW0JBWVGFlnLoHzKpq2C3l7etob8tBbe
	 e55uiY+Ejd0YVcy9zCZwg+qlfmJmE10+S43ZcxC2MiWMtFC9asfU0LOrbDM+XIh3Lc
	 x3mu5OMgWIUKcygtk/AdaPtZZleAxX3WjTeBfckbAx1u0+kXOW7AalxjXjBv4dnEl8
	 VxG3u1eX6jhxPNNmKYISlooepIFAnINBh5pjlAuYRipqxYUXUL08zP5rCVdrBHVKsI
	 knEkxdZfZI1Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67817C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167137868741.29766.18078779119082328396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e731ffda6bfefb9437f269fadad31b7949924bb12f626fcc93b8feed9995cbb3
Date: Sun, 18 Dec 2022 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671378687
