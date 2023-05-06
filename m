Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AF01380
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 07:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF9A8C4339B
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 07:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683357486;
	bh=7ypnDChaG+Jpy7hgm7DcS9o7nVMfn0xJauXfOlVW5xA=;
	h=To:Subject:From:Date:From;
	b=P6BuHfWz9MV1WmxtnkxU9iDp1SRtu8i6vWA3YZ7p/eY75c8jjqTKIaf7dvFOzAMcy
	 vPARr1tQwdXoTGSmz1Ro+IZ8tj3d6cHAXEL03FmP8XrL8hsqTt2l8b+0CwLwGWVCZz
	 aplCuTFiYtsCTEY9KkK410RRI8BHYv3AOxM72hQ7IKDUvYw2aaSHDMHgyTlVxm8wms
	 VMjk/TTN/bOkfYKZtdPq1NPkxrBsoZgMMznJiecrQ4/6w5tingc+BIG+5SKDFWW5Yd
	 hCr/kWIgSNGIan0XGgALgDpWDy4VKm2B76s3h6y0mcL4ha9UYeDYRLFW8sFSD5iSF+
	 rJIx8ZaEOan4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E88C77B7F
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 07:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168335748578.25523.15293209036677305466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da9b6da2ca604c3f8148eedbcaf4adaf71a743a93b79b55629a1a985812dda2
Date: Sat, 06 May 2023 07:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683357485
