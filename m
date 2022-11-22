Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C329D107A1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 792F2C433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669141254;
	bh=yQ3D+fedxMrmdKmUrvv1V7v9qp5+if5j8RZ+vh8jM8Y=;
	h=To:Subject:From:Date:From;
	b=auWNqZumQfu5AeowSV8lyUEr2ajQpFq6Kb2whuJLC/G3aA5XBLVdG6ckfDqTDZEnH
	 FQXWZSxgXbzSegMqqQf7LDEpwGWnzVcmWd4+lZ3xWr01j6/zAE8HoB4nANYXeYmq2W
	 GH5vq3lnh9lhg/pWYUZNfRk9ic12CjbcfCgWePya0H7nvJD4GKUfCCXbWJKCAEGDVi
	 /9hZd2gplwRsusRJ5DDfDHUxpHUseTbGJJuOpc8Jru+ni9Baf85umvg2/qOw1ZN5aK
	 TC/sOq8Dxy7d7ldcOkXGJ1tZFYLDpSfp8WQmPEvmtZtpkgqMUiE1pyaQB1AhGeZbxN
	 pASs85OVez7aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59543C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166914125435.4112.5694951480627183641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c68f1bdc191596f117472aaa7861518315100873c5f88eba60c88443dffed66
Date: Tue, 22 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669141254
