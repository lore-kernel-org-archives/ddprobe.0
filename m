Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387431FB1
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 07:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB283C433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 07:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680246665;
	bh=uncpkuSaR3Cc+wN+XkVdyUYrFGG9lCsE0gFW0LYOhyQ=;
	h=To:Subject:From:Date:From;
	b=Jibn2DbETGiVrqGoZPqKGIan0o/mIR01BTxgH6ZCEorS0AVdYgle/VTQxAVZw3kly
	 BG/p6BJxA0Mafket2cJtW4EdVX2lldI7DTiFRkDGvUFpBj5jZmnHztDcmrWKd8EbUn
	 ktoQredW2PeKZxkI8+xRrnWAp/onErHU2UBxHq7PIBZBg77p7GG4eECvFa5DHsef8o
	 MWqLCQadOwkTl8uqh4FV457r+Dqtz01NECf088Dsp9K11lZqSRpNQQF5Mfg4bDpzW8
	 v6gkKwcM5/1cgE9rbhotLB93BsKoHZH7TNIqbYbCXSjd0obh0zXINEaZzoSQWXgGi2
	 6IF1IrdvCFhwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAB7C6FD18
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 07:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168024666576.32691.9816310459318250733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916fdc25603cc43466eba835d8925e051b92afe0e125dbe6164921d2d9df7094
Date: Fri, 31 Mar 2023 07:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680246665
