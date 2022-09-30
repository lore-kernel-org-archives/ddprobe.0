Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90FF7B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A9FEC433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664576453;
	bh=6uNApNH6ENF1F3IJCr/k3lGB+NDenMjhCVfH4Qqkf8s=;
	h=To:Subject:From:Date:From;
	b=jlTYw1Yp8lYD/HaG9x2RcNfZVq1rlNNJdO21aLNuh94y6TQnv41Ee77u92EYhDaDb
	 ExxHb6wSng9MBuqHDpwWQd4GXZuntXeLokUhaNHkg+yRsJVPAlAiHSgGPzikBPMH/P
	 IEciUlp2rBFTGCaD09dfPKkzKKt1fGNcqu+yxNIKPhLt1rmFBHNsMFjR+DWnxm4GaV
	 w71Rzest2uqv17GsZB0+4g/Oe31TDliTbulnpGeburyasOj+CgjaCT9qPLgqCBMQik
	 rdlKjuvdslXTjuA+hZu5iU989OO8eOLj89cpDJ+snrUPRBPVOJN3ECJMXVBFSsvtRG
	 d8sjmL4reA87g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E83CC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166457645337.17395.7941187511971636535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1fe33183f11c2247c2a3fde7457030d38a2f3e6e0f4e4adaca871d7e69c7d6
Date: Fri, 30 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664576453
