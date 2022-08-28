Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB487C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 02:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC62C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 02:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661655052;
	bh=XfXN1WCfWsU5vCEXa4/FDpz444Mc36rImWh29GmH5IY=;
	h=To:Subject:From:Date:From;
	b=upjex+3Uo/1r2c8RlVRknz2RAfAZhMy6KcAZbzgrWfvm/6hO/rdGrIvAaDvd6FBfB
	 hv+Fs25C8jnIO7vdJMYqts3hxLv2pcnSYRFTwMxz/mwxxV+kzpsgZoJDsHAHKuI7Dp
	 ETufiN9WOUchWc7Zq0oEVnMEs54kX+UmicbH5Cbtat6CJ+yu2zonNQK4DbW242oooq
	 0IScXv8LnatN8z2Xppd2YJ/n+5qrMNhBiI+uLwsovZtpIZNVsGgLCwSn1aplf50NP8
	 FR6a+9r5H/2Q5uJ7ObYDuQL5LZmdKWQLeadlNwAWB9zGZ8n+fDTYSuclQE9ZJTiKu6
	 ZYnyUue0tYWnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54081ECAAD1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 02:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166165505233.29725.2620268890791275603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ad5e0c1e7e71c8dd182c9aa88780bd347269b8165a5dd8f2dcb2bf5d4d8753
Date: Sun, 28 Aug 2022 02:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661655052
