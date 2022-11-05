Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5F21101
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 703BDC433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667614254;
	bh=BVcpkfbWxwThlm1kyO7EJIh5ZnXOoh3HB9dPdKGvK8Y=;
	h=To:Subject:From:Date:From;
	b=DXgclZmqdhtPFcpgviE0AUU0YeSaHio0dPh7dhv/y1l+95iwQjGvXxvPUEsirF7AG
	 wzguEjtdkWVhs10A3hPzXwZb3lO1J24afW+Tm9pNtWX/SSHgjWfN6tC0jLnUw/zBM/
	 veqVPXPhRDMnWtxcOFlN1LVm1Cwa/bgRDnG3CsN6CY8cEyhDi56SXLnsEzK7pGFuTa
	 a4x74UQroPfvWJpfuyOGNLWULY7AVtMpHS37V9a08NZemBpZWPsZZ9fe0n2VhVzgtQ
	 aPK+JQfuJxl52zYgrSFiCLmKvVaTPSqCdLFZPMFthKp2BmoWnF4QGGc9dvOIIoqPQ3
	 /uFOoKdouogrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5758CC433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166761425434.10488.8656427554278952593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72bb88cb62571998eeef9f964f38c848725c8d6f305b94eff41dbf12d4b9b1d3
Date: Sat, 05 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667614254
