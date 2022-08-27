Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C884B15A0
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 04:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA86C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 04:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661574652;
	bh=unbuuNnPuVkXamfmaaUiMoBO3d1b0RDxAz8t+jhRmbQ=;
	h=To:Subject:From:Date:From;
	b=D3gMODqjq930iUj+pv0ji6taGz4oNeLIa6hrMtlRnj4XZfLaikF/D1I1euTBBgZ9N
	 OgNh4inmlys7brBw2ZKtpVhZuC3C2k2rFGby4N+EOXZJIySHp/0vhjVaKN4N2+dXOH
	 gkiwUeDzK0Gy5bnnRrMzKLQgmGoo0JWwZnm1+p75aI0zRTWKiIRpgwBWfcYZEBLB1Q
	 SCSQiT9k8UDquBWViLKZfbSwmT+ivu+4hjZou405sgYonWPXnecfGXU5mP7OIq/6+R
	 SCZ6x0v/Q8YusLcsUYE2AEGXUQgwMivo2nnOkqihnfKkEfN3v38nJ0pMs7CvBGLk3h
	 dizC+UqL97qXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6268BECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 04:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166157465237.9937.518402362308791698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab9daf666cbad86ac464e283a38d799861490c30aa74502ad721a04ce670d18
Date: Sat, 27 Aug 2022 04:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661574652
