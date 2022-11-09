Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0315EBE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7926DC433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668008454;
	bh=IJlseP49ZPRcj+7ucN7y8REFut1asaKrytlJrAFYmMM=;
	h=To:Subject:From:Date:From;
	b=guyx62Pg8aXYbaRO7g3CCUYfc/xC/Wpg8dBfrnIAcvGfcOruw43u1BkOekHLxSJkZ
	 D6e8+dsU4tnOI2TZ8q+CAiTiwMBav4V8YaThSGPZqSeQFPTJA2YecDJnrAKuB5wwnj
	 NNhz78Kywkcc3QCfRPPdKF7QZwZBGCLPeO43lCH/bPOB04ltRFMmHJnlsS38Q07QPH
	 xf+H3lApK+a48Ul1Hv25hmajfBph6lECS/pcfjZPzUOpaN96E+6GE30CUFN4Kdz7x5
	 qp6G7ve94d6ULUO4MOMJzZM6ehvmATX6mHiIfMgkjrmaCCNzHHGWZA4wUJkz5P33aX
	 5dDS+qC1iEpZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCF6C4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166800845436.30439.17450470380135605445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96da540bba4669aa13f3bc86093d21506505f024c6260eb7ccaffebe7b85fcf9
Date: Wed, 09 Nov 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668008454
