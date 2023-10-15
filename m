Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA4A185E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 11:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P913evCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69B2C433C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 11:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697370428;
	bh=++KMzgW/RwlCcDjNIL0sFLuJ2fDdzS5pjERsSYIQujE=;
	h=To:Subject:From:Date:From;
	b=P913evCM99PBTwDJsKo0G5DCOwCMwwYYs1tvlhCGoIE2RzT/zu7T86N/gbgVqb7RA
	 QdhREQ3YFyaGEa0EWIgmXQGYWGy+9AH/4ELLVIiQBdJAIPfdYqN+zL1KWPdNCBsCn6
	 Xxfs+bj7t/PYZKurxeE1bdCZuO8+pfPc2FhpE2uxexL8IZFTsjCzA+igURn2OfHWS2
	 VjkKFJWkNsAHChlTa3EzIrZea+CP/vtnGL3s38B/1g3+7kCbrTlprjC1L2L613duvb
	 pwkd9l6MYC58UlO2p9633boY95HUyyEg4nom4EDIhDqqIvHfNiyiBdvJaGqDf87AuM
	 tNUcyAvvHnF0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BBCCDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 11:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169737042868.25774.5147959236488095369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a3b2b662f6ee00d680654fea1ea9927cbe66f0fe1bac0c19059ffb4f5f26c5
Date: Sun, 15 Oct 2023 11:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697370428
