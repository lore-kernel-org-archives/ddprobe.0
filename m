Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370AC28F2
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 20:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3075C433EF
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 20:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683493085;
	bh=u5fsrfuQUFZeC8X7O8eqKg5m1ub1WsZmc7Etbp0U5K0=;
	h=To:Subject:From:Date:From;
	b=iFefh7RmIsXX0aZ7p6vFS++Hyenq6euux52GkPXUlazrgPtqp0EGks6QJ2hV8lz89
	 KgAG6fy7zdCfrXn1FUg9w1JDJaZrVP7b88EkSCFMdDiC2rvelqGbl3iUaR1p9oUj0q
	 bRfW/TvPDdSA/3HhOjAn3yHGx2R3jcpcA4G1Bb2SKT7tytzTZEwggda4yHdMm3aV8I
	 UVCur/LpLKnnZihAvfpB+9SGFYvMxWgO/5exVsVqQkGDvla8TbssecnHpxNj2EsQiF
	 odCBO6F9XJxexGgV2/bFMdUKRzgcjNLweJlkS8xE2Ew42SuZJcyHHhOdOQWwVNcBk4
	 tzQeye2CD501g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4ACC77B7C
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 20:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168349308575.2614.18120532234670392296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298aa1aeee59834389d983bb7afc6120959d9858fbaef285c9075585a7ec5350
Date: Sun, 07 May 2023 20:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683493085
