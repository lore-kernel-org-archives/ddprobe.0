Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0F213AC3
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 17:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C435FC433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688058188;
	bh=M1ihpFnzYz5bcAoPtY5Qgdiqa2zwVYhi7nDJw0DIyjs=;
	h=To:Subject:From:Date:From;
	b=eEOGKfS1Xx2PAKINSS9goVg4IFDomyFuoWJxWadTicKbwLZzkfPNXG2T6y5g4aNuR
	 nYeYa3AoSotp1nte1DNBLbR504eDB+071VkSKTTZSI43b8UXoVZKYShYidGlR2VjIN
	 Oljkp5MmW9hNgs2wfotKHNzo8ypV4fLbUQKkMA76wkzFoAR1KvphEwWy9okQWPbSpU
	 iiHAaD1Byb0FDDEChYbzqnS+IV3hk5GyC4g/WppVVIldOnQrdNdp8Ojqd8bLI8NaKM
	 ZckGNoZmVCkxMha4Pdmkahy0ztLoGzINGceRdAgjJkaNDbbfVgAze1f0OucaeHbnVL
	 n0IehfkoCGUkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B9AEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 17:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168805818868.21261.15294624461871275841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33745cba8e4d1276dfb612485e40b18c0e4cf79155fb60f1cfc2e456fe9990a2
Date: Thu, 29 Jun 2023 17:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688058188
