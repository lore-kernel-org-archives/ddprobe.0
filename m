Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B24E21255E
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761437994; cv=none; b=U6Da/x0/EaxnqqFaL74gRbNxl1zaI7EogefiWhO0dr/6r7sKdL8WUCo7Ty9vqz8lpN2Q8Zv20bKMknnMZQioD2OJFkxzRWeZVSnkzTpvPkFHiQRaZTBuEP5d0RveVQy4CwRZJU8dOTr2G1Q8weC43HSlGNkXPaRslvHuYeO8RJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761437994; c=relaxed/simple;
	bh=p8Y+N9R8reTMPbEfvKvAl6S+IEDYFvPLBXxF+ilN/lA=;
	h=To:Subject:From:Message-Id:Date; b=Kz0AiNddiO6fOmsVFrzZrCp82nWYTZ5kWG0vEgEDoZc3MrsupGFCC8h0j2r0XM53V0NpAhLlSJlExN21O05w2Ks2fdU0z0Tl6FWosEpS2XwsZO7oMKBj7/HDivRTKdSSTiNVbN9GLgfUN9X2ms1icpwakZ90jr6NYtK1BswCmkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsvtYVwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsvtYVwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC2C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761437993;
	bh=p8Y+N9R8reTMPbEfvKvAl6S+IEDYFvPLBXxF+ilN/lA=;
	h=To:Subject:From:Date:From;
	b=UsvtYVwChNr+y6ifbuxEQToRi13I3WkUrNe5hFQB29W1CbouALkiCAnkJZa39Qzl0
	 RMW4z0ndiNQtF+VwoRA02Gw/YzECmbVsBJ5+Rqa2MRv2FVHYLzhwDGpfTOrzd3gNC5
	 cAtA7t5xiGUUThAGlgbhwheZLPxRY7Z04d1+VMOF/PMOgdrWunj4zh9Wm7kLBJUGT2
	 vm28LidD3+S4O/nLofTbXNKNs6COo+JVv9l0pB/RCKGb9ja4hvgfkeZv7SbiqvOAIU
	 7ZSz9BiPtSnkKO4SMdEXDPFCx94+wiyV9R5vhPROA95Q8tU4CNEYCjXgb8j2DL0xQv
	 nQTQC7BYJ+BxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB17CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143799358.23676.6696507190126693827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99917f13b306f528f8892905a286cca419b1b4ebcb49d92e016200710cb90933
Date: Sun, 26 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761437993
