Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB79D7F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F582C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672705887;
	bh=Dghqi4eulC7ykkBnUmnPIO9VeqMXSunRQUqspfbloPI=;
	h=To:Subject:From:Date:From;
	b=WDOs1W3qyLfHdlivEuR/74ROZCU5jdXb+T1VCwzlICF+i40ZS00Kke4XcYAOnwP3q
	 MswO/2LfA8SgFIi6yB1aOIhlxl9zqrKi/5veX4tmJIyUzy//rw7d3v2dsKqAqIrgpu
	 o8hVTpzPYeYQ3Jif1Qgl+svuU/1gRaun1/zo3dmWoQ/p1E0qrTnq1v0Kh13y+vlxpK
	 0nVVKuJOLyKtPhay1U/ZvnKscTxMl/zdSUL/Hvtg1SoxWBGrt8oiZ55jrPsILfAVqe
	 RzRAYG+7JiZAj5z8i+Hi5rVHiBo2gZk3Biq7At2a3COEnMbEYp7PFu9nW0/YaRaY60
	 KdLBt/N1MnIHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63787C3DA7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167270588739.29234.11740033052702783553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bf8b2ba9fe7a177be3fe5ad2b59c9b0716c2efe382ca8da139953a7ad267bd
Date: Tue, 03 Jan 2023 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672705887
