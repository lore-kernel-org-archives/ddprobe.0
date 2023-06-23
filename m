Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571FC1DDC3
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 22:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E99C433C9
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 22:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687559588;
	bh=v0SN/aCYXvzGg2R5rmsh+UfLPKfVLw7PkTLbVnE+T40=;
	h=To:Subject:From:Date:From;
	b=JNAFBqM6k+/NhQChuNGTIH4+LRzoeMdkABGrnYCMCgY8tL+7kFLZU4+w8uzixd9rj
	 m7JruXTrajlB5/sLuAnIsQ9iQD28+UBHoLmQAD42uZLCRV43uH7GLlqZNF1vmsd7fz
	 YBulJf3/CKb2zg681Hq1V77aA3uZ/Qav2vRnZOv9RpPegDW6GNnStBCmbDNUdf+wrW
	 jA9vBCq4jvNO3lh3dZhYLjz9e2fUGcdtPUygqFt+/sCpmgFVmRexycZO6t12K4aiQ2
	 KGJdkjoc98Fpe4817255Rs/ND4+QH1tu3RQXMbkSPSVI7Xk5EDhhYHHmjY63jYq7Vk
	 64fBP5Q3QY5Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E76EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 22:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168755958866.26500.8844594571336176221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa9c4899a7fe75c938995e4bde4e52251635bf5345ba045510f1e7025bf301d
Date: Fri, 23 Jun 2023 22:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687559588
