Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF7411185
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9bOSL1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 874A6C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703849896;
	bh=HN/c0L1C6ND/szWbFEzuodVESdH23yfRz82gbBCS6fo=;
	h=To:Subject:From:Date:From;
	b=U9bOSL1c/4rXxw7Z+2WPCvF4HVWnQuQEGYEk5PY0q6aKqo1fA438TCQYimYsocC0q
	 JQYzUy3wyClX9OFFBcsV1lLADQoAD8I/xb8ZgfFhDHZkcaJZSedo+eCw3OdeBSonwY
	 wtkiXUJFmb9mejHWxitnElUcslwoZJgU/2TT/SGGc0aYgsw8OMGvO9DIr1HqdKtlg/
	 4UZqyHr+N+Yit+lnYDoRoMFATzXPlscZZdk7v8LfjAVFpBMCXmiADg1QPun/MNc73Q
	 UHS82QT9yoT+1FsG0dt4IFUj65ZijRZbq25hmRfb7rZFBuyj12EcHODe9cAyKV2P92
	 8O6Y93Vbg74Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6899BC46CD4
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170384989641.6133.7961424210531241984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 186801ebe35f961214439d83e48d2e0ed85d5013cbe90c71e42d446d7da6b97d
Date: Fri, 29 Dec 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703849896
