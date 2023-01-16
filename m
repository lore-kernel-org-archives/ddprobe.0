Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D811EED8
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E0FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673835687;
	bh=t4qo5hRWBkjn4jPjabZuQKg9siGTR05dt407FehcDLs=;
	h=To:Subject:From:Date:From;
	b=qoWmvPBwECHGLrgrXwUKp3E0du1YhxsZqk5JZg0QTZS/bqGfFhnG4niNHTVLCp/EY
	 9ywC8uO8dQxT4am0ABqu9XRp1qr5RosrCKDvAq3fSIZiRvmonSu5Kl6l9RBIiPCjDd
	 +F038np2C9M1Eekw6WdR2xe9vkmnoJ/ySsUGISQfLcDDw07pMM6P3AlWksEIY3Bu7o
	 coiJPKGsSDkb5TOoj7h1Wwg9EoQn+OLG6L5tkYWnRcPXR3n6+6v4BeuB4i3tvtlRag
	 0LG6lGnV6APa3HWljMRC+4+A/aq6j9mfPA52X/Ex4F/64Hn9LRoz+rwWLPCKiOovPE
	 4W+azaMNyCU7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F60C3DA78
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167383568738.13816.11671859720776180365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6231c9634cd565b07967b38fad358b90da948fd9b1afd281dfcbdecdaafa01ef
Date: Mon, 16 Jan 2023 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673835687
