Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E670533D4
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 13:51:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85DE3C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670939488;
	bh=IrshZR6CeTwuKwS9X0K9hKZjQCzor8IEOVSUgjHJSJo=;
	h=To:Subject:From:Date:From;
	b=C1PdcJ8zhOQX4jRRnr5boPWxRNl2Y/6MIRtmg6Q2fue2gUKdGJW4xSKnChT+4N8Y6
	 mz57K/wqxY/v1L4ld7kycXw4Y12ugeaTOriPhHH8xcqMi1zejGc+/VnAcXojD83fGP
	 EshIb27CFOTdolBVJxtLWiGNIsEwmLcZ9j4KbxmCXZowb3PkhnZACR1OjYcheI77c0
	 GgxAVUlnDeXq4KQ/uQI034vaFK0oI/hPN6boDu/R33tsOz69yVCQVuoE3MqHDJ+zUn
	 Gj5nVIQKN11TgbV+moVSlJXRs8aTx9YGRAQvXzbcnqrvGLIVuXe93Adl0KTrteIUZQ
	 m54D7bW3bJn4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D96C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167093948741.19061.16333981085606194270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a03dfd5652866ef9f1825c995440986cfc38ec6e288a35d514e7982e4e6fa91
Date: Tue, 13 Dec 2022 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670939487
