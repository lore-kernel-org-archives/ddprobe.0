Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C86D26AC1
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HoETCNoN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99559C433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700002096;
	bh=MVNLWTvqADdnnS8IvhSSvrAsxajQOTFUA3jRXkHMl7U=;
	h=To:Subject:From:Date:From;
	b=HoETCNoNGIB1TxxAuuUQQtf3DD9X0uskioqqplaxtsZTamh108c0DbWdqA0145fL/
	 HtDDDGv/9VT830zq9+8pjmq82xVAsmqDUiPFWNbFACf4zLeVvEFXSJOGvgT/td1/Ps
	 PlFcbljNSiq+TJrHgdO5GE39vRWFfIrWdO02I/DCK6uAldSOMrVVNDxYzPhtx52KUP
	 xHP320OYxXFnVoYhQJIEe9swGRw2DhDkbDGxsbmY8k6UU9mTwn8w5rzhMVb0+ILINm
	 ZQFEwQShnVg6Rbu7KYqgra6ER+W0HH2VSzkk0OnqDpPErvk8O6mwHojVFZbFFt6w6W
	 D4GAX9/GO+cVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76D15C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170000209643.953.2784031627038291087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8501776e3dbc89d623cb2278023d936e9811c41756007fb96cac8d436276a796
Date: Tue, 14 Nov 2023 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700002096
