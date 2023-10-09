Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2EA1775A
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 15:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G84zjxqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B3BC433C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 15:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696867028;
	bh=swDsNbJN+56GA1T2/OEoKzPmUv2fzn3s+vXSwVs5qWU=;
	h=To:Subject:From:Date:From;
	b=G84zjxqLriK5iFUEsnU3s0lo0OpIb4Fk1LXqmJ3Ad4OQk7qXh0wU10xEkGXQvrLaE
	 oKrZwqNupDd0FCRsj9zBCr7PYnDcFthGwVFdOkR55wB0JAX6K9PlSYa9/NZpugxGbm
	 KtXCRKJfCf+1LtZgM/nBauDbB2WkzLE2g6BYnSk1p08iU955qdAnlZmHaOZ9klG3fb
	 hlLpfeAZPMMtkSlDU68gsiixynlkLTkU89dvlR2tppr6PDbUR0yq7mawhun1XLCcVN
	 5bGI25QDaelXaGc9dfly5C28/hB1ZiQd7WTuNDkoL01XA6PKHFlNvHVVUSev6l2Zrv
	 qrr7VuHddGpYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5D8E95A91
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 15:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169686702876.21243.3841973787708200538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25c3c0ac5e0cda644161b7164e4eb658e2363f9807ad8b5f5e004f2671373e8
Date: Mon, 09 Oct 2023 15:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696867028
