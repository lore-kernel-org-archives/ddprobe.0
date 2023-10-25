Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCAC15486
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+zyQ882"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C914C433C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698242896;
	bh=eFaX8Pui30VTXD/31sVwQGg5EoisJiqX8YcPCLzxzw4=;
	h=To:Subject:From:Date:From;
	b=g+zyQ8825RjuDKgsHJF/NGDDKbBU1r67U6gc7ub0EvFQhxcvp2eGY3w58qdQ15Cvx
	 l1dN3/PSUBC1+irX8mP1iI4jsvgoCfg1GE4OBAD6amJP8neOOYAnzQ6TwxIjozUHya
	 tlC1aMM29sRUZCzoaeX74nwMjeeIV2XRg7ZQRvHpUjqAzeAHMnfLEL6vZyC7nDE9Vg
	 +6B0hxU1gTW9wl1rqcvCm1aQCFXVzf7s5vRnq/qnSxXSQSF4MF07ugQWfHMGMaQ1I0
	 JIWKM8FRCrzl4k1vggdAh2ETF1S7CC3ThDLSskjoiSmL58/YR7k6R2EzvrkOsKWXOi
	 dm0j0FeUjIokw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 726F2C07545
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169824289645.30551.6473955020871326250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4339422309ff3a713810fc7452ad905898c5ddec3b5bd99e1d92183ae6597ea
Date: Wed, 25 Oct 2023 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698242896
