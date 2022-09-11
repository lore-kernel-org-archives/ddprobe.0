Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0A3C7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68342C433D7
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662923453;
	bh=h59DgoVsz64tSYM0teI0Akk5ZwBbPvJVjC6+T3Pi8AY=;
	h=To:Subject:From:Date:From;
	b=WNSryBR7ma8QinbRTQk1nYZuV7i5wY4lys5gCFi18FNDetAMFR3d6vqj/aJjBHKvb
	 3gU+GfzrhDDdgq/XKeyFvQMi9hgrujBndyHJ2Nkris/1orZcxrv8545gZEywoVF1Qr
	 thSklTctxh1NerLjHzy/CVi8ogOCpl+5EIog69z0a1RvtMYOyMRdAUxgRbBLtfadEj
	 Pi0tXRyqs8/ukAKfG/n4KM0ddU7bHrNZezVvvUaf1Fx0O0ueDpt4OTlM0dSdVljh/I
	 PWf+wIttPVkFWlrx9SxsiF914SCgGb07HPXW5wUhLAu3HmY4pDYa1yab44r951NoQw
	 Z57w4soLNK1MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50075ECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166292345332.28571.324980827828501256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d99f3a46bef4266732d02c7ad8065ff6fe0187443f7d2df2c91e0cd5f95509
Date: Sun, 11 Sep 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662923453
