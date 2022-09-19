Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1A46AA2
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71CF5C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663611053;
	bh=FO77Qx6OU9JY9ugNLl+5Pj6kmmGkGdxxFp+y+9MyDDU=;
	h=To:Subject:From:Date:From;
	b=YyrnYV8EJbgufU4KUNTmWoh6vqYcaBvrM6JYn++P5utoqBu0JkZYuNYtLSOJls4zY
	 1JHt05AgV7Vex4wVQ9H46nySx5RUBHN709o6oLBh61fKuHux3etJe3PivTAK9FI9kS
	 WsFWccWd1wFAud1UiYwHTJoNyb467xZ5e2w1/781syp2Ngwln6iaw4m6ADY2dVK5iC
	 hxPEO7XjD2QT+0mrKYTcQXFVZUW2FjE/X8g/hoOITqqabLIpTOWfrwnCcaa0rA80ji
	 FBIWR+hngCYLRWzpxXUL5Dykd03Ku569Vu8MbLZUXTH5uYaKqsakEGFFhW+hpJUyM2
	 YAV7BsF+yUohQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B0A5ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166361105336.9515.140766471884526707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba7aafa36af983a2514864ff64595a0c84ccd45a6d1e365487100d5eafaf327
Date: Mon, 19 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663611053
