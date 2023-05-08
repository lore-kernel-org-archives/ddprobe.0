Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498955CB0
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 05:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DABC433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 05:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683522485;
	bh=UZSs+mIgxjNg/pVVc3Am++1efmMYccmmMb8I2zPPtNo=;
	h=To:Subject:From:Date:From;
	b=jPA6X3b/4/6xRvBgtxgmurwWUmUCVzZEIWj0UjljhY5u57IzxXvGtKgwA91Mhunmc
	 3OfKkxjd+HsE2inNWLCjGAClvql1hblOr/baCI6Oi+BoYa3+yV5cNXmwpppG2GXxn2
	 0Uv5/5sZj4vywDsgLdCuN+HOvg9DXOXGMy98RMZ6akv4+t7DG5KodhUVUHXU0374c3
	 WcChihmEB6nC2GQjJrjtSfkwozDu5eXBCIsUU4mrCRTZgLw4IsIz4N0nfJdSuw2Pvj
	 53+EINaKrhXHmaU2rXlMfQrooSDXtQWVo1a3ZVA+LttA4X/Bio1ZVUDWrq/J5dMbOi
	 bFOxUdZvHf/8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1FCC77B7F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 05:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168352248577.9083.15760937114272970993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda8932d5ebd696e97aa9257838a28c6af43114836e09ddf137f081a8ea835db
Date: Mon, 08 May 2023 05:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683522485
