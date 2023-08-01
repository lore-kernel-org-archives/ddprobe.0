Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7C217AA8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 23:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D664AC433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 23:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690932728;
	bh=WfMal1Z8D73fl+khathoCJohHB4ASSFTVvBT+Yf/v60=;
	h=To:Subject:From:Date:From;
	b=cRvm4RK0iaRy7d7nhEAi07BNRZbrleDju8Dpf28Jjh6aOQsVmgt6xt430EcyCKwUx
	 GiMTKNrLFUcXSolNWa2eopehfzj7MsZRoZeA+aN8l2ndILoC94R+jc6/j5qSEDB8nE
	 6BCIPItmAjUC0nMVeEvKXAct76bHgS8dm7tOl74opHIxp08n/S2x0gje+ofX8T8NDV
	 VFxsRISqVt39aAaZtY7tSirSJr7Gx+hORr7MVrnk/GloI3EuJOvy33gCflaZqbcHNI
	 59yuxbXF1sTN1ZAD7Qasj5r6k+1XG3E90l5Lb/kbHHT0nxlm9T6ganHByMMcN2GjaK
	 BbMGMmh1qirGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8AFCEB64DD
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 23:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169093272874.8831.4531648345755766162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a80dc1c9271465d4c8cfcaba00ae697d65f6d07d72a5a8edf1cedd2a16f12cdc
Date: Tue, 01 Aug 2023 23:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690932728
