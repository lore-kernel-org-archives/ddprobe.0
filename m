Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC50541848
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPeaTvkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8342AC433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703090296;
	bh=lZ89yHdXxGDH5idPdYo+1CGSLNRZ8ac52EffZY39rZY=;
	h=To:Subject:From:Date:From;
	b=oPeaTvkIEmXTR/Cpd7/dUf7ycr4Dpy2dv0XTTuDT+8wIuIG4xyl+T+uN8etH+KfXA
	 cFXkpFiHi/EdBhniIvwNLb61XqbLxzx1IosPGiS0h1xP/T8PEOrKDqcrYoDf9eCIZA
	 Z483Orz8M1fprSmRFAIfUWMsnj0aF5h4zkdrreP3lqlFeoJ0IVfZZsNQZkzG9OJMsV
	 adcwArDXX2l3UM91RG0l5UYn+8dRMNqKoS7WFKygy55rzt6QIV//QkcsDR+KOg/DpT
	 VQSQtvDfMIZgMYX/peYB6rmhWZz4Zij5AkyNlKQRW6Dvz0GBTdSHJ9bJxODeslCaNj
	 Y/bjTGBHpHwHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64474C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170309029639.29879.10077419173721165266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639831e41ee38d820a127ca184a51e29ee950d5946890d08bd3530508a66f87b
Date: Wed, 20 Dec 2023 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703090296
