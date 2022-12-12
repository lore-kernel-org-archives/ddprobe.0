Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8431360
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 813E3C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670863287;
	bh=ykvgcjyKijHsPxs+9jYoo4MgTfN5SUWJnJ5nOVZ3f7g=;
	h=To:Subject:From:Date:From;
	b=orLH76lDxHZbDu/zDQgW8T8Tc8/vgwtcb+339UtB9BopdjFmnXZq/Bdu5Il9xHOIh
	 Dm/l479+4Fs4QISScvqJ+Xigl7Rmj6Qtb7tDDBg84dRnR0hW0DUs8+B7+p3jiPJyiQ
	 vLMmTBq7mf9pcXhrnN01NoFbDxKLscVqczHoVVINRFiEo2OieErUj3dPkrdzYQ/wGu
	 dOBloOIzL08SylPtgdnxN7Ca1jchCII7nn5yKb9i0jVH/qjBbsHz4czSN/rf13+Cce
	 bAATvBP6fuQOcb3cEn5q85mVHIB5DHvUBD5FK3heqxrJYn1gaSODhf99oNmkHuxBKI
	 2lh/96Qru3qKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C38C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167086328742.17959.6562159737249365440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac2c0cd423f8cccee549b7a5a0736ac44f5797d4d3df934251808c11965c877
Date: Mon, 12 Dec 2022 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670863287
