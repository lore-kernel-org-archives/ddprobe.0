Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E36E10950
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 16:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D740BC433EF
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 16:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685377925;
	bh=FY8paEdiV1Ln9/GttlAlecRlpSsTUUO6toENXlyblgk=;
	h=To:Subject:From:Date:From;
	b=rH8mjcpEAbZwGnIV9/IBlyHAJaAyvm4KNZ8blu8ukSsG3ma4nT4FlIgu13ayPqkl6
	 6SIXh+vS75wrQ2suMfCN+43yPglVCD8nXUe3NC9IU7jgexISzUKRTSrwnE0E/X9hr/
	 GzyqkXHkNVshd4urnOY1G4bcg7WdFG3OEWSjVYNx23TlxwWAFoEMmyzjuerJyOxh9P
	 uBkfndt+JSLQ9nu9FKJ2Ghmrw9paduTLCtRXS3gvI1VU/rSZcAI01xk9DpLae57CF/
	 06hfVRU9zG1sgtn7L2CkL0sCVHpEYxnPj9JLwg+0+kbGsNHKZ5hnk/cazg2Ri5P/QI
	 TBdvY4CYSdH+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9738C77B7E
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 16:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168537792575.10536.2842139237661286447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 817f9b22f928885b92e1bc42da151667cc23d437b07f4939bef206a7af9235c1
Date: Mon, 29 May 2023 16:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685377925
