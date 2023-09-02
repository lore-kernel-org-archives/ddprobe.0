Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1F4185D
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 05:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C6FC433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 05:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693632248;
	bh=OjMxcG81pc03hRbDK/+I1jgL/Cpg9k7GuSfYpx4LMn0=;
	h=To:Subject:From:Date:From;
	b=oPwRK1OWAx6OX0ttjKm+43a+CGVBDDFp2J7b/M5tJ697Zw1hy+qFneOgE7poYNlZz
	 kB5msRsej+oGHR2I9JWZHIGSdSsZEawoYousZVDkpoTXl/Xv/GwiKlG9IwYn1OvwGP
	 Zz7DFZgXFrMu1uXFvUikFS5ES1LECkHmTxbT+6L1y1Tej9uFihX/wxxnnOoGXBGkCh
	 BbzL1wb+vXold85rqPMZl8YUeEoE2/K+vhDVs2PIn83mhRnVgWkGQiUYxqyI+8iIzc
	 GWx00d1ylgKLQzX2BXia0rCeQ4AK1Zsw2fg3Q6i0Kcmp/mOtTGl7XpHKsQiYniN2XK
	 8nEi8s8d4fTmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A57CA0FFC
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 05:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169363224878.1383.4910688477028507476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67a584075fe10cc915e2d1822d719242c3039a49052c779087d63d91b714963
Date: Sat, 02 Sep 2023 05:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693632248
