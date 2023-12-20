Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08231FBE0
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2DK9MYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D128C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703038696;
	bh=kbpJTclh474GeDrW0QZkn+791pBGuYBvOcmRPjd5zGQ=;
	h=To:Subject:From:Date:From;
	b=H2DK9MYrt2gQrdoGPvxbb8snQ65o/iTjYh65/B4EaOTcW6WmDqovYrd17qi7McZlY
	 zdch5u5P7XdXFpxDvqFLXa6Vn+/WZIsYLLXX4G/ectMDyJGhwTXVdDfyzAAkXB6wpy
	 PGvvwIDnMwv6fIcfnbms/4GdoAW8WhiX6ekfEX+9q2E0sAn/VeG7LopuDxJORMtHLU
	 oxxGVlEvBUGWTs3lZaPaGssAZasgrJI2w3IzMKmRD9Um+GiGLGfoNWe010p5o3a/ac
	 6Nn2mEpVmH4S1W8ax0rZwQoLbx1nBOqR1FwW0AkBNrpU5LiU5wtkstTLHcW5huTJx4
	 e1TuA/nNwp+1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644ACC41535
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170303869640.30910.12506161432923432966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db99fd5000fde90c130aac10f9c74bd91769365e81997ecfe428273c9dee4da
Date: Wed, 20 Dec 2023 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703038696
