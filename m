Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43987210B
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 14:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEA1C4339B
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 14:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679668865;
	bh=4Yn1FNGGWwPVjGCvcb7B5QMBbybAWQUbJmfQ/22Z5BA=;
	h=To:Subject:From:Date:From;
	b=biSj5S3V9mv9+axtBuMfxJyqHLBcTgayRVdvfER0lZCjX5YXmadyzJIh/oyRB1OwQ
	 xmp9MqtQHRLxgenx5+VhfRysg6/gJQSfskBiwfMlVIijfFIEl9A6nPefW4CtYbhUu1
	 6k7wpbvh3QEHqOZz+cPc0sCUFs7b0Lnr7OU/7bVqXrbb0pVFT+3DjRdswupOLgvlMM
	 sjgsF2kn5elFsdmX3Q623eMM25LbB4WLgSdrYrzWHRYSx0Q+rXLaPkHoQm1SyL8kbq
	 RdxgmvXEuVMSce28y28HmoXp+AbsjJLJGx80F/kms0XqAGDaXzWPvnC1ThjHsLoDhg
	 QMTywE+6PbZPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C89C6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 14:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167966886578.8674.5935429897478710021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570f6d0f4890ac18714c9a729e6d66ae75e426af02f1e50f8acf1f517c211c5a
Date: Fri, 24 Mar 2023 14:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679668865
