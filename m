Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E609AE818
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D56C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666922454;
	bh=H3AozMFfQPOe8RfhPd2UlC69VFlmFZgdFgyh3x5D9k8=;
	h=To:Subject:From:Date:From;
	b=B264xH4GBEyoAm4RkWYTi2KDbCtrB9BNsSvPPpWrOpEOHihfT/RIfmVQxtZH3pvU/
	 X/OaTLiLiHtkJkoZdRheH/MeNf4Qbqb0xumk1PcCkMbw6HnF8/IrLOajxg01gyC8pV
	 QFalANNV6n6DWOaBwC28/H9kald8GUoRQic1nssYowLxRSxqvVcVYBil3fn+u/sjQP
	 DRt2hm7GTGv/ojsk4q+utT71e8HkmFOX/CqhUP4ymgAbiPBR0VBfx8jYri8zNH3Cuf
	 0omrLP6l6rZg/qUHtfrCIVStHJ7/R7L2ZwUm0X5Hr4I9G+NqwRDHpnxkYdgz4YsFPd
	 0SdRwdMJCw9nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B601ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166692245436.29609.6099717793097010887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b78294065f4d0f539bc193e8dc4149215f076f8c1eeb6e295fa999293f5bc4a
Date: Fri, 28 Oct 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666922454
