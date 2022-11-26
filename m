Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1D923A2
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE6AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669479054;
	bh=ZxrREFjm+4wfiyOKS1N6UMe3RmAtibEtJ796o6GxE5k=;
	h=To:Subject:From:Date:From;
	b=RGMWCs5+OMgCBkpSxb8mkU5T6uGnrkXKkDS3DoqysnF4fVRus61IMVbHWg2o8IRuH
	 GNsPsCn0cGsYgV1ixBaHLpSUBE1wp0gwvLeA+k5cYlvw9jes+kjyrf5QPRI+RT4oDk
	 EYllYP6npdlWbX1tnLkzaSOXF3uZgOOG8CqDfwXz5M12K040Pcx2DbWwltwpIIRGds
	 adCUgE9hwEpP5VFO3TgYSeImscV1s2huRz7mzps6VAj1F7wqiSqaGObBm8eaGiMmD9
	 4vpu/KDuhGSMMIAeWQqCaYepGgjE/0LIQ5jpzQcV+OEdiZSdIajQ3Z3CJ+kkoNRxHe
	 FOq6Uw3/8QQPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5477BC4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166947905433.15865.12801627165087836333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d041c2d23fa382e9ce508dc1354af3a10f987d6bcbcb721366c5cd4fe0273c
Date: Sat, 26 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669479054
