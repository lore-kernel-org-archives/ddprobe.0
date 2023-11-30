Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF1C4CB41
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzVklcdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FCA4C433C7
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701310096;
	bh=15jdauN3Mb1FnQ9SREC2tj9ZUqdlhRKlrdgXETj8odo=;
	h=To:Subject:From:Date:From;
	b=gzVklcdXFaL2TDAU+ta82NAoqg1DdUTiTwkHA7o4HzIMPt3+weyq3U8Bn3gs8Zn2K
	 pzyO1xB7jimRksRgclduIOYwmQYjV/ZKu6Q4IR7GR8i87lAZYO9cabrPvMIFN7gHwz
	 JxIWSkCvglSpuThDZMFjSZ1it3tROcs29Z7vA01FWhwXpZy8oRZWLPSfNPYIM+Xf1P
	 gRFODtDddW902vTKdcA8CvRPyhd1vuhUpHysSXrVniCdXriRF8h+VBKeNxH+8rmqau
	 c7tQALkxpDw8WGHgEiKXPRqj0lGvtO0q8uPW1sTlmdlgoKYfuYbjNiaun3c69bSseb
	 snI4UuVUXnIcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C50C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170131009637.18474.2381670563735709347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691d8d1a0ce883e28325be80f4f8dd5d39a55b844a4f32b04eb789bdb3aa66a0
Date: Thu, 30 Nov 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701310096
