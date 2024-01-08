Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF58C55E7D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsLGkEbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82432C433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704748696;
	bh=ayztWrcnYA1p9mPfFHkZQHKtHE0019H0Z8MdCnY8Hwg=;
	h=To:Subject:From:Date:From;
	b=RsLGkEbbImHJ68rI3UkdWJg0bOR/enKUcXIGqXE5qvBacoVKOWZVSYrdU1tO4bnai
	 vc1fzGlds4xnjyHoYzXq58qfRb1/rTwRHd3EMMZwjGZslL8QzgH4XZ/rIWAL3sdE+D
	 onLGisXQoxH/r32IJOzXQZ674ytOhmE++5rw4G8SgvJ0lfxUc0xElWrvUwSSKlUVWy
	 pxf8YW6mxsAOmJZi6DB7RCQjGaECoPAPCwnxput/rtffvAVMaD/X2LPWIcCVmQ9Wx1
	 QSEbarxaaLik2g9yoMl6k06FphoYn1Xc+MHt6dYRgwgkbdlESpoc8+DLvdkTSf2igg
	 I9iO1nPvTmxVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68728C3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170474869641.7518.11672850057911782310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a665cf06d5092ead555633835e5e27b3299b519cd6c7b95c7b4603e2572fff
Date: Mon, 08 Jan 2024 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704748696
