Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449D223C5
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 18:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1AE97C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 18:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686420126;
	bh=HX1AnK5uLTEKganSoe7Y5BvN8y7pUHbPHLZk184IDNg=;
	h=To:Subject:From:Date:From;
	b=Hao4XuYZnvon9AIySSaKjvWxR2VLVz/r/UhxXjO54IzZTQeGC7C1r+A8thrJFvYYt
	 hnhiFtZ3o55WDOKF9RK3fNGDAUjN4iENq94SxfST1SoVTF4nm3XAz/2kToPUBVJp5L
	 H6OcoTCDnnuQo9DIDZnDCxOM0WfgjOq/EDEuSxUwM6FBtKB2sgA85JP5i/AcTKuBpi
	 GbeZ1UHfakQM90rDIW3RUHXaM7KcLppMY/yF4U70+vkwHYQrXv9IOSljkx8JZIHuUP
	 2grDtRCWavGsV+ZmVYlASIsuZ2zxHcUBMR7oD15/T8b2FkybcSvqIgqa2RbSpAhcj/
	 hX+HtZ4rfSJrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCBBCC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 18:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168642012579.23840.8171426032827601385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a5f489d8b9729b0125df227d6ac3b6a9586d2812aa8ddb1031e3e319f96cf6
Date: Sat, 10 Jun 2023 18:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686420125
