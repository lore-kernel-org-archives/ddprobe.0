Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9254F2570
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68247C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663716053;
	bh=XOLtQOy0vOaXvmpng8gCCQNKGvKIphvtS+O1SHohLqI=;
	h=To:Subject:From:Date:From;
	b=kScRu7RonR02snCT9vzaePClJw2TVQujCsJS+wSEUo9RZIdqs1psZf05AW+rN02Su
	 /3MpuZ4VQZ3Pz06MxBH0PVkRATADycnPNDZ31rCSugWGLxrVH8Jrf3GKoacsPLXmR4
	 f+aeUK0VoWIlsHiXGPHgmIcNiExi9CyRMAmehgwRCnLxOlZzH9G1zO4Zmb56MLcnEW
	 cgwP3QTv6S5Wnr+WDZEBgemSEMnGogq5KkpCidyVcQ7vlSc5rzvogRhQvFte+KDGRB
	 xXyAnsN2Eb/quFkLhg40VxSE3cPGTFnKD5+/jxBj5Jmworxz9tDr4oG0KLAli/USNm
	 wPxer00AqixoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 527CDC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166371605332.24789.10143488756719007492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d155d754e783ad17130cfafa26a60c9afb69dc390e01d42ff90ba442ab38a2
Date: Tue, 20 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663716053
