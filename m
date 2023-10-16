Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B9A27732
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 21:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBHUeqtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FBBC433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 21:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697492828;
	bh=VWripYhgjVsv5Xzi+GKxSUuoLNWj+uBKPidnFygDjd8=;
	h=To:Subject:From:Date:From;
	b=dBHUeqtDnjxVXThU9GQgUn7w1ysiid//XEUrUcbAV7mqFGiyY5sQUkFUE5rO6YDbN
	 TShfW+PGgoaKJBZMOTajUBrRNsV03vbonipFFbpn5r5urJzKpiLXhf4jMVYo1KpoXW
	 ng5sV8SS88FdZIYZJLOFL3lMzBG9isQz+C2yccuxkAI0Qjd5g18UAthUz8iWT4NH/R
	 eOPAVDYDQbuRc5sYj+brgaz3rz6EWPy4MsVEBBQZhgAAJzavoYa/8Fre0iZvNx4wcb
	 FSC7NwJXcPAl4kQWgrQJ+P+W3pYsGDNh0ooPZ6lAER46gk6NQsfxc5H2FT1nr/ctZJ
	 a3hhISO4JqeJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD364CDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 21:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169749282869.13292.4450484890872421377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846b407b30e532ac0c3b345adcce50de17d9553ca5091726646b735483cc6674
Date: Mon, 16 Oct 2023 21:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697492828
