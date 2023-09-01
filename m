Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DDABA4E
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 14:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4ADEC433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 14:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693579448;
	bh=v2YBrgsTy7fSDyDSDZKSkB5NyQR4/0cAH0a1mMqiRbw=;
	h=To:Subject:From:Date:From;
	b=M2YB5XKZ9HXzYtABmyDcJczv26/of4YxnMxUEgqgc0vhsV+/lP0LmPUO1rW0Hr/H7
	 Jt79ibAmarAnwyS7mTF0fR7PhKfMH/Pbe7vxAgetPiGXAZZtRDRu6Ci1NcN+1vUduP
	 oLJVdjbatkxpn38Co5esFBCFx3e5AuU7bANptlcP6czFNDxMEpUlpTxG8qszrSnmIR
	 FeXtGviIUZTG8BTEkRRlUrtnGDHBvO5rKbHemnVNlDFuaqpPpBGkn8CSIvsn8rriEu
	 0no2mxYaDL21Vx8Ikmp62QuMdNBdiLmKaOfcdFjB8mir77u2JyGJkcxb7oCP/NUXlD
	 WDfPG/8l5Rwaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53CECA0FE1
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 14:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169357944873.24655.13143194096508989131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e1980fe2e5dff4c54c60b86769082fe31b06078484ca8d4df7d1349abf7958
Date: Fri, 01 Sep 2023 14:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693579448
