Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D142904
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 735A2C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665868253;
	bh=JPq84qAtjigsITLYVZbQastXpFCRM7SjzqxVEPHU/6Y=;
	h=To:Subject:From:Date:From;
	b=BGTiauCOPZ+uizDHnPTynpXAFArxx02taD2xNqLOmnugMI6MpINbXtennjnts+wEA
	 AteCjugBYa4X2vD6S3M69zvOetRZeBqhr9sGSNVMX2iYD9IEA9C3WHJ1qGTEI0sDKV
	 e1yv1zfP3/Mkt5LVDy62aHE+Npnct1WUJDdqbjPfLCRy97NEcGhuk9edoG1DM0+4lh
	 CFpHFTN4sK+/zQYKvIOf+Kjy6+Xc2xvosLc8HfkeA0bpUy9mi1Uv0OBZx/TV1/JGRS
	 ZfVZqLBC1l1H7o3G0ivfJoBA6JxjWTZQyrFJ3nQb+Oubf3Rcq8FtT6/KuFadB4nruA
	 TACbtRM9vkv+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5708DC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166586825334.7939.17728089835120089491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d089a4f1e8f2d4962695ce980579ae82cd60c460243c4ea02795de6faa4ad59e
Date: Sat, 15 Oct 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665868253
