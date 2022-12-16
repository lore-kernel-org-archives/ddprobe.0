Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A82362
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF2DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671208287;
	bh=VGKlZGIq63DxQQcCLC2HaxdzvH9UY7vBeZ2Qe0sE85k=;
	h=To:Subject:From:Date:From;
	b=YykSJX/k5nM2Y4WNsR33pcPVlUGDiuckQf+7ZsGDhA95vwxRdgs5BBE9bAag0PXDc
	 nRxmz+2aCoIARGCwpTvQZ0zFnknCG0Oar3Xjd1mBUuJJCsWIyF/OVEP2x2YY6NwEkG
	 jb31hPbEj4Fkk55kjQXaidnEoG+7viydMAB86qsI2U2ctDjSiNrw5ERCv/iZTsf1c3
	 zMss08wVmGg/UdBRBa3P1r33yHc8eWBSoAWubU3kK9AixMi203Q3VPnBEDZRmuaXN1
	 o4uVK8RyKAHLjR1TtOkic7ONCn3ZJtThldFWKxAHLKRBj909vIdYKxrHIzurEfGoKp
	 G9iGABL8CtOgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61CC1C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167120828739.22903.14875646363402939318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a3fc079928e26d7afdbd8fbb9338ae5ed6d73611004a558f9ffa0539e049b83
Date: Fri, 16 Dec 2022 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671208287
