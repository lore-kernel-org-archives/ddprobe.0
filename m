Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD428805
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA574C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671966087;
	bh=VG6xvjMVuOQCmuzRXRmfaOuNTJGykgx2z9fBYOOQ5Ws=;
	h=To:Subject:From:Date:From;
	b=u01pAFUXn7OIdpaNxP1yB5GchgZtFCO1kxYF+BtbQQZSPCXhVtviddoUSpcSwLaND
	 W/sb8PCc7zCBHZRrd0K9pnPP3/zVGpCyEOG0XPC+gQAUHJ7SaSRCcwZOQERkT1vEcX
	 vVeeo4g1ZRFx5jh3VSoPmZkd+YGHIMfz1pPoJbJ823/3SCxgeC/AL85utCMySyJLTT
	 uoayMdrARB7Fg7XIt3jJLDtU/V8f1BemChXTXzf0RRLjp7wCk/fzFT93JPDVaRCecP
	 U0qaCq9BOwTG0IaavEdW06xrm7C7V1iIz0OnJ+aHa+CW32pUwK4J1oTh79A6PzeR54
	 1GK3aqWlN8FYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84289C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167196608746.6030.16759694838726279214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2edb1fe93a0f79ac236e684c84c77f944ad88d63dd2686ae0fb775350e5efc4c
Date: Sun, 25 Dec 2022 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671966087
