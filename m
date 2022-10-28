Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7DF15C81
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67A3EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667001054;
	bh=BR0Hfk3vuzAfpl0nebsT53Y+UnidgEx4z2KmFVsIH3w=;
	h=To:Subject:From:Date:From;
	b=lVqezugjHRDbvWeZEINbcXRAr/Bu4B+MziG/57Du9jerbX9RXeYBxNlrXMWOaAtZZ
	 3lOxByW+edeRSvPxR5nttJx4hmSuQ0IgiqBZ6bcLonNjIW0EwUyMx79oy2UrGkEvBA
	 wS/6p59d8vleIEtLmZ7h7HLBTWkQDSp+T+KhuiKIAv5E7xbP8F+p710tDE5hW3u3W+
	 j97esGwmQz+3BmUAb7XZ7xWex+JYa0ba76aioC1IZ4/FPrWMVKEXgv/Qubc6WgkUh6
	 BJokuTDIlErRsFBvVnfxRZxHcMNBzf9t9ffg2cvCgSa+/YMtm1HC0Qajt9IbgfB/4r
	 4Zj0asoC/epNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C5AFA3741
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166700105432.4694.8543826607814198778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a4ad7763f93942b95c2e3ba401c4b56246226e6fcfce01a4d5441d90d349bb4
Date: Fri, 28 Oct 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667001054
