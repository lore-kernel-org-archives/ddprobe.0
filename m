Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE363C02
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 14:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CD80C433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 14:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680444906;
	bh=gsZCkexhXwHNl3+lpXW/CHso8C+iaxZw77rWDthVUqU=;
	h=To:Subject:From:Date:From;
	b=ZreRp+FtuszNaqLiGX+rXFdmHKb2hFFn/a0x5ROzvUzWR+AaN7Um4RWzxnkJP70u8
	 NbTfftoJwe9DxNbGMxArTSMPcAa7G4kXtcHwr2MVYK5BFDTq14LHUvm7pruMjpjsfB
	 3CkXd2vYSonhzSK2AQcn6SJcmS4ebG1zMnS/JzWBrJqWRSpppM4K+1JleVp2OMPozy
	 sEvrTh1V6jWLBJEo5mMiGlTPqpRAh/muMSd8/jVb8zkcDPamOZxrcrzFsRIdvSwBA2
	 RqtUb3z9tmjU2ToBi17n/MbO5oJQQ8B8FU9iWBV3nokO5Kc6rpvRUCkmDJ0XaUlAiH
	 8s4zX9JVHpn+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF200C7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 14:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168044490588.5269.6620002090840684634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472e946a24a710892ab3a501bd3a608ba365b6c9bb9fcad4df580be69ef7e737
Date: Sun, 02 Apr 2023 14:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680444905
