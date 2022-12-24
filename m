Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF82628E3
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D7FDC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671883887;
	bh=5vNrE/oCbEYspzQJlET6UFAUAORAj/ELVqtL7LogX8E=;
	h=To:Subject:From:Date:From;
	b=Ck8AfBhhXiGgB8Wqs1MnkdNRn/bdzbZLM/39S1JYRLwocpbMOilkbUBmLE5K4xQ5x
	 XI+RwiZZhB5Art3/koucsnuRxJScA1YohH0njg2FoY76/IAW6mdBCoG2U1k1WVyHye
	 me7AdQe6EzjMRHpH7s7B0+INvQ2arB1C31nzDGa46ccfFOEQRuRN5Lp2HGMhMaUfrP
	 F0PjADEiN0I8c5FOjrgjaqmYefIplqwRBs5Bh6hWe/tAj86fPbawgW9nTL7FUz6wFv
	 1egddkYLhA4AoNx3EZMbMn504aKuNoB/6kudoBOMQtod0+Dl1DyaJKSslWYebn/vsA
	 lRdrglBi2wZBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70168C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167188388741.20904.13560728472263141023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e3eafde3b42d5aa365af6547aaa86dd39c31af9f693bc4e93018f5ae9e6a1c
Date: Sat, 24 Dec 2022 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671883887
