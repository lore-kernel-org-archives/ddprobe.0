Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD68B2F59
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74698C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664908253;
	bh=gL88DAkrrmXrUm1Roy7G27XFTAJXasPdHmuVSzoX1sU=;
	h=To:Subject:From:Date:From;
	b=ewUCUVJIH4gl1PTb1Xy1/wZqVJL+FrEak+En0T7+lYeLMJz6in56TOoIhUrBo2g89
	 lvStGBO0tHvZb4kkW1d0HaJtgmaGS/3EpGy9YgWmxW02bq012zp4Jti02S1U5dlT2V
	 ZksureE1V/7nHgpTHdbiwJI+4VkN7lcXpkmGUD5D3c/imq5bCL4wq2N8qS8a7iZRtR
	 zG2K2Vj4BNGuqLeg7B5v5Uog7p4xfADpdy2BowGpaNPn+M2IQDczWjswlH/S2Ss8PJ
	 ST3GudplROgpAEJCMp8FtdfzUTb5euL35OAHmMN4UeAdTJ8ytwAp2xMcIZ+99zyHZG
	 0VEy2qnF5dvNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59A83C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166490825336.8422.8336148398104657994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6d0872eaaf005d42b8973485f2f441e59c6a24f26d9b10034686dafc14bbc8
Date: Tue, 04 Oct 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664908253
