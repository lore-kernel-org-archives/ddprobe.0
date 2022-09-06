Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C908586D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CFFEC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662504053;
	bh=Pee2fGuP5gIA/qm4FDHSTnP7DgevaiVqFNoR6EP6O2c=;
	h=To:Subject:From:Date:From;
	b=NS2ZRZrkt4+2ifmmVjDyvm5D0M0TCnXjuHMbvBv0kks/zm+nF0V40SLCtoF1yCOeU
	 hHCZtuxcKofvddJv9uL9ywFs88n+Nup8ZjYgRSeZkY0LuIByb/yspGM2NTklZ2AuLU
	 vbVXCVLqK78KR0unSUImb1/u0SV/E1yCJ4qTDvVIdAgdNZVgtUXGqPE6eDWeikN1Dp
	 ROgbO/i4roYCDsdyEch3HQP5U+DSAIKRfXwf2iMf7cW6+FVneOmR5X5U4i23ZABVbA
	 tjmLpdAIAuEFPranU6Nktf4lhp0O7lOHwKr4uu0RFjX5H9A6m8CiiBtje+ynSOuvsU
	 cha11QSWWcFOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542C6ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166250405332.25276.8021057546113251787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145e7e81b82d56adc85df1d59f13827082ff226aab6104564ef620dbbdb14240
Date: Tue, 06 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662504053
