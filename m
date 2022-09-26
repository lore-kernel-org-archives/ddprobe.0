Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF47F371
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73561C433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664182253;
	bh=u3WGFI8rw2tCvBXVPd53/eB79Gs8/nm8MCLraAiFmVg=;
	h=To:Subject:From:Date:From;
	b=H4mikFHnKnqa/trtxa/pemGc8k0af9fdrWAmI2/8+ggx7Ly0GP1wCnJlDAVv1JuqI
	 AFPQjvS139QnNQBaLU52QFURJinTLGojOw0SwoCkIjYTtlEDq/7fTBR/zgFmf7yoIo
	 sg5L1/ro/OtLJ8lCBB3Cf7RBVi56/eDiwtbH+t4z69suhurA+ZTpIDsPPUQxZxEwTC
	 TK17AYxqxSQmIUb61EtUig22VDIRdNZuJ/0GciCH7sO+DhvX6/Tv77P8MyGQy8qfLR
	 8rEH6a+lXf/gh/n8Q6hygKEYKzK3vmwIWFXboRbg406HuxzT7kDJJmvUaX0X0MOzh1
	 0KhNnKsqvNquQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 577B2C32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166418225335.20334.4372344920993545585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edec80d58a2b433761448708def9beee1fa0205a738e80789794ccfd0356b121
Date: Mon, 26 Sep 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664182253
