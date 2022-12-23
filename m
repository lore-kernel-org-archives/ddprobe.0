Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1F1AD44
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BE36C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671836487;
	bh=sjbHX7ld2E3GpIGWLMiNZTrwjGZuBOcBU3jnGmf/Tak=;
	h=To:Subject:From:Date:From;
	b=J2ZjUcdwuFI+I09icf0+5pVcOyVx7HPVzEL1j0AgqtUtPN+JV40oqpKeddjZTbTMc
	 XHVgqEvxIolOn5/r2yZT8mL9dlhFOkY/VNBt/XTrylsWzwdHas1FokFArmdOunsOiq
	 nssOJgMkekBPvdsUgtzaSka90Ibj/FVXpKLJkOiePdmpd8Wqxryish+2J5+cfVDIwN
	 dL9hlYkV0XRTugN7/x/YgTnSsfKFK3OwE17RoRqL/cKD+jEZXotLJ0hlOTlWos4bhv
	 cyqKirdu+62P1SMnLpyHFQiUkqjGxH7zJiIcvAEckFDlrXgEVYk2yLv+pTB8jcqZ+t
	 FnjqiTgaMFpjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7323FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167183648746.14784.15215084539742375984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011c0cb072d2236a2eb14def70693d7cadfad16bf6b917ab9685be4042fc0911
Date: Fri, 23 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671836487
