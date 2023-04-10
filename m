Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FA92598
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 09:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCBD8C433EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 09:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681118525;
	bh=4deNIgyJ1Djb6+pZVlsPEEQATs54rM7vkrcEGqpMRKU=;
	h=To:Subject:From:Date:From;
	b=GVZM9SAhZ+5XFXFN6aZjvlpZ6ZseX8Y539AMffuQ4hLXKYxkcACXbLtq8sO3IfPHY
	 SRK8LGGddYI1zewuCLdEGjtipxLXvD+ROvxK1nZb28OVGI5MPfngdV2YMO4jT7va1/
	 sDxBJYLBUmoQwc8TQ18Ln9VrBHo/Sp+hpopQgW1+y264hnSUnTVaA+kZG9hocRQkJZ
	 SncpfsOX3ccT76rAiFYn89SxiIW9cavu7ABzUooNXBzeCAtaujO9ZDrJcE1GZhJ//v
	 4f9fOgyA89lPuPlFGgfktMIVdlbdN0DHeXcpvSomxHXWRzG7u3vlCi9rKRbAffLx7I
	 Mo6l0JvxZUl2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D3AC77B61
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 09:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168111852577.25361.9953992912386995629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6935c713c5a65148bdc91b696a363cd2f2705b15959324c48db22cb3b41995d4
Date: Mon, 10 Apr 2023 09:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681118525
