Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9C515C1
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D2F2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674174687;
	bh=73zPRDQAz/KELnEWB06faEzcqCXszXBWbnU4hWrQZVI=;
	h=To:Subject:From:Date:From;
	b=HglG1MS0fJLg0WlrGtxRIOQ7SyPhO6JhbZAyG71rDKys/GBYkhA70hWpf+6Zg9zGn
	 a2iLL9P7wrgkOAC3ArAbPZj+3hZ3r5RFTiwNfAlsHqBbBmdQjhOsIJGGF3FQyHRTFc
	 g/XmdzxXzcYVuDDVK4hMSGDrab8sQSWqwLoaOyr9+2MGkPOZnKRalZFGaWSCew+7Fq
	 obJNQr8IhMS09XGrEBtoA3IFRTGikbKKRI/Jxah/ihJhQjgE8srlIlw7WPYPyX9qXE
	 hBGpSdbGGDoCsxeKtudobVNXj/L5SeSXAXoCmrqamto05wEEGdSY8+S/y6cvBuwER9
	 Cdip+DMjLtcTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CF0C46467
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167417468738.21176.6408526804957012816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4724d32551924dba1e9f0f42bf5970f88d1a69d31514eceb1ace56f22430ee1f
Date: Fri, 20 Jan 2023 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674174687
