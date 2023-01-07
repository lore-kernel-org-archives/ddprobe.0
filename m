Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6037A47
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99A5FC433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673122287;
	bh=Z0QQWwG5QroGBPwtDtBoMbAT7E3YJdpLqZeRaFXQEw4=;
	h=To:Subject:From:Date:From;
	b=ni+6t2BHcBOSeWDC8oD6On11Kx2usM3Qfp/8uoziPdQFqMsWU+yJEerGvPeIWZiMI
	 vc/xWVCrUSbO3aDWYpJ0V8yM9ZrjG7oCx39jNIFMPLM5gF3MAabhF/qhtp0xu2GAow
	 7ZxjAORf1W2zceDCg8q49LpO3c1U2Yn2Wtrn4ZPqRwBPjtWOQqkfueZGY554C35g4n
	 KPDzUhuJzHdMA9IfNKdbj24sVlpxyyXw0Ttc9F3IflwAQy+4cQtjTE83HY54vVfGL9
	 cCtqln4F+QlJ1ERzA/FRxyfkMKaZnd6oItpDxyQyfwrrY4JmHuvKcn+4yeJliIMb6j
	 ReIJtWUduwQvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79D30C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167312228748.18628.247185344661062434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508bea8ee052b54609860e362320328ee831db9ef3b7fcd6defd78ef92573db8
Date: Sat, 07 Jan 2023 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673122287
