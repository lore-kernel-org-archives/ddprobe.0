Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3A0320A
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 676D7C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661971853;
	bh=SI5ZogbCdVLLvZpgxlxVxz3bfv9O9sZAEfqd0aabXFE=;
	h=To:Subject:From:Date:From;
	b=JCFd8In1roUQDKw95WvcuzVmW8ZyqcdALM8PZv0u8JN25XNQI/hZimXsPjVTqc/BY
	 +k3zbqNSi0IDmu+xNCKI4O8D46CikGv2dm5hJ7d7nJ4Buei/Auy8X0dyxOHF+4KmXq
	 neDj0ZtDdxxsLbRbaNKuFdoMlTAw2R3tPGJzk4EGIm7pP9I5BtaP1D9kc3FE67mEta
	 obDujcrXkWBKqjUDaSUEGthFYHTo1uzw7hvAVKO6C6YoMawrD//5akaM2KBMrKrVXN
	 f6AxbNj3XfFW8pNC2qx9DbE8MwgGGpwsm6chxbewoXk++3EkUFSbpsrvHfY2qFtLgi
	 WObvn39hwdCYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5350FECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166197185333.29434.10194909211343503425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c4850d71ad28d0ea8911e4cf1bb1b4bd2d0e748abbbdf59908ee0e9192b018
Date: Wed, 31 Aug 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661971853
