Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784F6450C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 21:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42F1C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 21:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695072308;
	bh=Uz8aSx1jJk8srx1z3b0HI2zB33WhMMwNCqSWRs7A40Q=;
	h=To:Subject:From:Date:From;
	b=jnGFJ1WmH/SINjfpbE1+kQ/W0rn1tH88XOlfxPEimt6jTmfnLNM1mF4l65udfMufk
	 xHBdIVabYCXC4Y715Lhw/CZRJ4oLvEHmdgYkYstxundohm2eeMNscxaMyY2rXV8BrW
	 /1LIFirJYd8spdqgQn6bgBVQf3Q3kz0ahRR2eR0bx4K+S+06kil4Ctreg06Ww+fcoQ
	 lyt05gFbINz/WqtLojswhryk23VqD7NsebX2oUUYkrzX8E/R/QrwIHM9lZijeqtd0M
	 aPC7vLs44cN3anSr+kfZaUR4ovQ9itp6P3mpTlYkWkUnsNWK6ewQKw37u9ZQc1GIOT
	 widfP0210mc9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18CCC46CA1
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 21:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169507230870.26798.17661225875583502630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27ea1953cabf915ccfef992786581de1684f8993bea64dc8c2f4e08914044cf
Date: Mon, 18 Sep 2023 21:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695072308
