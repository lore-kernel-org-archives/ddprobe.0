Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84AEF375
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 00:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC98AC433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 00:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693874648;
	bh=5kDHOi/Ow4twM3ne3wdI6tfoPtUge7N6GHpXThSe3wU=;
	h=To:Subject:From:Date:From;
	b=VsLs74YVNrFSbPVzFiEvnM5us52HxMj/b8iIMwrIZ8djBTwzSRhBo7zREcloF1Dvm
	 Hz6xCQ15SuCv0dWNkImms8CcHsSif+6W5I9RczcitoGKAyXfj0juw8E27iAPukJIVE
	 Z37YpM9CLezODQByAqjVq7LcWxU1fbLBxsVwhunJ7flcSYA0vlBwi5gfrW5ApLQ3wb
	 sCXaTi6sG2Ak327fctbjNpTV+1pbu46sQKdng+rDsU9Rc3XpiaWfwnLw2NDfOmg1M3
	 jWbl4sfxEm67mVHuANAAuvQeDSwxCKyR6CdW/qECFrsCDObk2UL13ppoxNNT6Ltcdw
	 cQofNj/89dRiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0019C83F2C
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 00:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169387464869.19392.10708466804012182078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6673a74863a4ad20544100faf597c03629c6e45ec1738afda7538ba5adc240d8
Date: Tue, 05 Sep 2023 00:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693874648
