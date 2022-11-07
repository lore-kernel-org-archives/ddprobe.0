Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59BE15A6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A44AC433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667796054;
	bh=PdCgWNKF4DGukOdK/dGOPk6hmq/R7ajR9PyZIlnx7lM=;
	h=To:Subject:From:Date:From;
	b=UHShWdg68VBJRGDhx462ELBqYJAw2ytZd44VAqtuG9uqmQfMvHU7arsadyjaLPGzM
	 /VB5Xb64Ob5Qon/q/iWR0zXIXQDjzvqUXrkqWAE5q2CabuFH5hTA+dkKxjwnGe0HGu
	 5X56CZhGalAYAhEntJZa5VIVjbnoEkukIN4f+eUZNfCPaO1vs0vTeIc2yvfuJXiUHe
	 zr2xNpVjER5Yof6wfYh5a9VUBPc9NUkgy+PRcGVyxPQRRySWZS14auUl03eR3B9cWc
	 7+4rRwRAkm28mrOOHyMLPqrPbLGmCrI7bXK9qYrHTBV0PeHIa9RY674A0rIq87D+tA
	 cPQarCH8kulfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59025C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166779605432.17371.8877953575079752666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464b135c50bb9ec6f9cb3e6b2119123313b2df3173ac55ea5be77dfc6bfe963b
Date: Mon, 07 Nov 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667796054
