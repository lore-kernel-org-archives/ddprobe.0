Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D3117C2
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73BBDC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667967054;
	bh=wxBjx4iea+nzi/7T3fxYlc3+c/gKolwQ1VDaBeV59sI=;
	h=To:Subject:From:Date:From;
	b=V7dvM7HITN5ukQmo++h6UGkw8rLPl/O3cjWTNaSIYqbaxFokXKn9o2j41fK4ekatV
	 B4WSdwsMUiyEhelAIGqNZDqV3PjRlUHAOCxzct75K6hQngo2cIdWWb9uTyZ7pbsbti
	 RD7Xc05Lgx+jK71oIeCbsQBHifHUDza4D3l1NNQ/Wk/Nqktb4w1hzQ/va8zm+xbR2p
	 IxF2Q65614V8fXFo9TpKLm2IIGV02+1vf99i22aJcLEMsHdcFmxk66Nc5fJwrFlW/v
	 LqbPSonDuzLO4c7Ci28kDoV+ROs93ChPyBShuekEX0NOuMhAEa3Sik9P87+UZivsHa
	 SM+KEii7pvNLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF7FC433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166796705437.32664.17581588018613844047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d7c658bbb876627bd6bbee0accebe24572bfc1190887c5ab1a7131ae81a6d7
Date: Wed, 09 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667967054
