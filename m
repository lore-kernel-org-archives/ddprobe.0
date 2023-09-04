Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF7EC8E4
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 19:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60D6C433C9
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 19:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693857248;
	bh=1RUaxiwkby81NoCpS/8jCVUS7lSHPKOCDHIVMWd1I0U=;
	h=To:Subject:From:Date:From;
	b=ScWXaiWLR4l3v05CyF0zWZT3/oj6NQVM+QuNa6EQyrhVANYuIkFxCExaGeuRqKzJo
	 bMhJx0FZhed10CQ6FugDcL1o46Xsywhs4odCRzgeyClN0G85c6tyr9HPZ8zAD/7DUI
	 5Uk2VSswR3JjuNEFVr4jUBabYYA2yGYi15vG2aBtcMq3Ct+caG4SjNYRSTWxvN4smS
	 xcFicCVO3sfAi16H1KXd80UTunbgp0fkFZaiPlZNxIJyKsSP0cLr6WBrb9r7lXCXI7
	 DGUD04w2NjJTtAPyg4aIFCEP1oAdSd4XbFYFiKsKVFE3wQhPYqJ62hVcI/n05Au4M2
	 gYE42PHw1m1wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE723C83F3E
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 19:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169385724869.2032.5750060255990653535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f6889fb06557b4cdd8783d46d7e187774b66de57972a2e634b25a72cb5f680
Date: Mon, 04 Sep 2023 19:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693857248
