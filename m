Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8AE38DD6
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITM8B+H/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84EEFC433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703079496;
	bh=N46H5IAp3cx/YG5bE4iNlmJC0xY85KQojqhudvRkOKQ=;
	h=To:Subject:From:Date:From;
	b=ITM8B+H/M9MSGTu0XqUMFYA2eqpOF0XfsyJ/SS1kSWGRFD78Zwrd4HsrjHn47yEh0
	 1eusoDJl/L2Fy/OMpR/sxm80M9ojk0TN02/ScMww77Z9alHqmhUUsFy9hYBzR28FDy
	 T0vhWKek+DVLJ+13IMRkfe4/LQ6F02dAaj73fG3dDUJ03x+VIARI+pbdUQtqto6hRl
	 G0fre03y/huO+BZVxvkg0aLKBhpA3pxSOmsVfBgrPNVJrNZWB/pcCCUzaryGeY+3WN
	 JYzYasuj5gZJO45fheCbMmjV1P9LROhtUpmZZx0/5AIaVj9fr09ldiS4HmSYzKq0Pk
	 5wPH9Lxn/kXGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654CEC3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170307949640.18631.14037884573880541796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57584fe100a99633cb22b1efeb29c7f9c9ac255a9c2494ac4fdb4e02059bc4c0
Date: Wed, 20 Dec 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703079496
