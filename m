Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C18881C13
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67F8AC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668411054;
	bh=ti8ivVW3PvmYOgoPJcs++zLwKLBC/MJGcnwYRXdV0yM=;
	h=To:Subject:From:Date:From;
	b=Agz8F6BUaNkihV2kPH4arp5AaDhTdz10XDCFJTh7FPbPOKKsEiZaaFHt/aC8ZH59u
	 ZG0SYoU4jMqNb9lF75RlN+/r5+YW4rQQSEeCJQ0eox/X4JYHFiAQPra4R2DluYT+Sk
	 +Q/RoT2S4DqAZxgurt3FlRx2yXJmwAgM0S2y1xAISvKw7PmQyEa5MTpehNLFrPqubc
	 KnWtGMzrPBO502QbIZvR6LjK/Z6SvSSSyY+ttt8+mGXxmquG4KynyHjLaJeWdv2Img
	 dpqns+N8YHAkB0f8iNlVQ2kGOqhicbEMDkS6u9fyO1+TvutJo6W1i+IRJXt57OdI8o
	 WQmKlEKn7MrwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 519B2C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166841105432.24327.16608578580000304807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab3b13be67fa17f20fda99a3027cc8f4f31900bb28bab97250720401c803da25
Date: Mon, 14 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668411054
