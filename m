Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F467174F2
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 22:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D859CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 22:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687300328;
	bh=JOWG2kCEvaDgWoM2oiHPsdv8WJTB+LOCzCobxi6tM/k=;
	h=To:Subject:From:Date:From;
	b=AVDMFbylPzcgAawXqGjM2fDA8FJuyi2QnwULzfUb0/rOE4ekJeahCAfkl7AD1Yej8
	 SeK0Nptv89ET9TwsVA4TMr5aCKoSaYD46IsPck2LzJUVmutanO1Xi7YPi87fxdo8VD
	 XGreXH+MzxtDSeCqBuf7lDRC3NP/3gk2KrdkoAoGTaRAB0ANWRujqpK5qvFuj0jbxq
	 hEPCVDSzN634Z6KZIC4ddCk7Wj/b1U9LxOKtCMuwMvZdqo/xuAsVIv2lepputtfdXI
	 GYI5dl0ooAQW3/Ay2r/q9jJ9j+6RlCHz6YbuP7lUtbksxFkpghkjkSwhuG5ZahE7Ds
	 PCcPxmzfjkwYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B624CEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 22:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168730032873.17402.9982372569998421739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b243c0c83fe4abae9ce19993e3522a13af99cf1d801ad03d1514b7981aa77f9
Date: Tue, 20 Jun 2023 22:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687300328
