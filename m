Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25D25380
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C087C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665186653;
	bh=AdlCihWrNiTdhiZ7TWoN0fa3mCuUC07rqLikLp0tYyo=;
	h=To:Subject:From:Date:From;
	b=dBtHV+NMeWNE05TTCaF6oeAVOiRlmp1+AuN2RWVzuya6IDny3mjaKrVpWZv10bAtG
	 ibT7MFi9NTrKHHwkgr3CZl64yXFCfIF6TaOM2jFXhRY4I8zKlrsmYSyYjM6le0JwZA
	 emIL0poqq26+94o6SZTdhugGOhOz7Tg9dZCx5hSpVW2GZzT6NSXNiuLhGydAf0xMMA
	 vb8EnwQzqy77cJgsO4yUSlR4PaF3okevGalgWczjWmFymtBvY5ujKcER1driMXftSA
	 uFb3qQvCsAmLbOP91I3i/FnqCKHSOwPa46F7gHlL0EyBTz+3yM3IiXggQJWPUhWTz5
	 0/2DRaCABTtaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B9DC433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166518665333.29002.13075494175332056242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b53f6c16113beadbc3aa5dbe29c1192f89c5d6ed0e7059db70d06d7e8383fe9
Date: Fri, 07 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665186653
