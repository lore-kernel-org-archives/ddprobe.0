Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426C31DED78
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747063794; cv=none; b=H5bC2u9dH9OJ3oowGdsEaE/iHk5hrW3T+3/V8NpLs6ZhpElrTHvgajw+wNGkenvhZMCcqb0qB+xqHNQ4peISBzpV2xJ1nbRyQUR1NgD2/ucRc83tMIt1XrXroKp7ok8KPF/9K52Nh0DcLqnrzXxww92Div9Gnz65mwmkoHXZ59Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747063794; c=relaxed/simple;
	bh=Ll9ua9gNdmnJLofR6Ge0s/3iNgWwKtCBi6ev0rM1cUQ=;
	h=To:Subject:From:Message-Id:Date; b=mefjziTabFm+hA6Z7pKSPm7w40Oa802gOSAPVvoAPCjVwPwnjZa1IBZH1Wc5LMFmfJHr4sOJ5iMqta5Cgbf0AbnoEkYspTrzZ7NkcD1v07mN5vQLhpQ3VvDn8rEY5pSPubmNx2V3RD92PPgtpL6vsoyPot4XV9tLEErdYNNdLoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mu1pGcUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mu1pGcUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F7EC4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747063793;
	bh=Ll9ua9gNdmnJLofR6Ge0s/3iNgWwKtCBi6ev0rM1cUQ=;
	h=To:Subject:From:Date:From;
	b=mu1pGcUu8INld9aNLaaPkfd7iZdAtTSMVibWX3AJZ9NtK691pqilJc6/XrCuIySro
	 ozNuF/bXTEu1vwC121h4p43u1+AX/5te9Gqa+V67m8yV9OkaGZaAGJNRKwjaTHGp6F
	 aAqR1qg3P6FwRjuqPM58TQIEA67fFk6nTvjxxVquLVxlraJj8XChtJy+qbz03O9d8J
	 GH1FyLYK4gYu+NXM1ARegx7lXNYkampo+xbw1m6iocEU7cxybkKT4k71ZtvA8OHUAv
	 XWgmH8jMgTDV+V3XoLyVTD9OedhDk3g70j3xhRS4NICrRfaphMDP9uG8BeElM0zm3p
	 pns+PuGbwZh/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEFEC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706379357.13846.6578540663466098364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f12cf41dbe8bc86ed143e32045d3882798bb88a0a1cd1e5bb43789000ecd0c8
Date: Mon, 12 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747063793
