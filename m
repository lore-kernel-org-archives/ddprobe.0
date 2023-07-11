Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69B123DA
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 03:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E61DEC433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 03:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689045428;
	bh=H5yTAO6W71s4j+YYWMXS+t/S/WW9vag9+/EutOPU520=;
	h=To:Subject:From:Date:From;
	b=L54XqQ5lelyKuelymADqMtHv9QN4yWodfrOj5jbSHqlXaoyoEp+trNexIvvtUE33E
	 c8cdzjjEFi6nS0F5tu5zWAAnzHNUh1z6hH4EBArUQWJQan4hdjr2M1IqXsc//Zy9qh
	 e/Sm0E1BdXYAW7hQXTGJ7TUmvD1VRNPHaInbAMZfV0PvNI+EPKI9nllvPKg4XdDlyw
	 lwVx31cxJf7kDybbS41ed047Vu0mT/7OBbDVADVUua8SrVO7y0FcDQgGeSWdX/glY8
	 mFGXXiuCmgH3m44dnMmF4GWhSoCdaosVGeOEuosod3vaf6nu/k0AKRHwvyBagwq1NA
	 O1conmXZAvZ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B1BEB64DA
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 03:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168904542880.24243.17421802431326190937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23922c9f505b6804aeebb6e8ab22f5dc0e3c9d55ce43e7963c33300f3c3ef48
Date: Tue, 11 Jul 2023 03:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689045428
