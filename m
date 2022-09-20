Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45EEA20
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 787A7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663633253;
	bh=liVp6r0n1wC3d8gayeFgDUkCEU4PTk1PRUkI7WSSWwQ=;
	h=To:Subject:From:Date:From;
	b=pJhhm6hxzI+Hh8zG09IQTRYW1ykqrzdo/u5BMpsDDuUFw10X/IO+AXWBLA2HxMhO4
	 S/HYyerxb0nG+FlSdixys9zs/MzT9JiWCvv1Bwle2Jhh5moK5fviHetwSwaD1Kt3PZ
	 DITobg6bD95raZU/qLFhsGIh7/DhUlfErJS/1UyqGDd/stTsFtaPvSW7j1doxQicVs
	 hXt/523cCVYlOSaRv4knl23qhMxei4QMo+6FQGHOufPu4LtgjHohGHRnF5doyZDAs+
	 LMSFG3UQNPkoDooDqJ0FzTJuzQj8nAiqlZ2md39TOGLAwOoO9C4HZepBtAW93tQSy4
	 +5MuabCo73pvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B72CC6FA8B
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166363325336.9248.7572581758675299727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f51f3b665118569fcf43f68bb0b99f2ccde00554884cce9151f11ae4b6c5280
Date: Tue, 20 Sep 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663633253
