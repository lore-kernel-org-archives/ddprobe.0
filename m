Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D01456292
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791362434; cv=none; b=GQBboGnQUTxOpJCv1s3bIWIiLz9Gl+JUZ+JYa5xWOk7Qgt4g5CtgTU4b5hMGM2RdC6dsrCqidasp7AH6vLjoQEbScOx9jP5mBhLRskkT6Xppxk9SwRtbRpXrk1N66fOIrDdoPb54xp3LPDSjlSTR+lmeYaNrSvqv8QbBUQK/Kig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791362434; c=relaxed/simple;
	bh=eRnp/iJXdKyx8fR4WyjcJMH+2riymyVbXBN7rEI4JTU=;
	h=To:Subject:From:Message-Id:Date; b=KG0DzEkkM2gyVx9ugwozJoQDbWQlk+qIk4eHNr3usr9Lhm60PsbkAgfolHfrWXCUmkp3sN4WJWSEjd/aBahtKdZSGDCosM3+Hn0iJDqDQYldvenP8zeoSjQVLQio1NZ6u35gRx/66Qh5en+c4IyL3/Lf1JlSuSWReJeIf5lrVzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvHMwn4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvHMwn4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF215C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791362433;
	bh=eRnp/iJXdKyx8fR4WyjcJMH+2riymyVbXBN7rEI4JTU=;
	h=To:Subject:From:Date:From;
	b=KvHMwn4uhs8P4hP5pzEZ84E5U+M3NYgZZhVgk2CBJ1KJpu18ggtXGe6z5IMPxaL6P
	 dNgY8aqsZl6n+We5T07L4VO5TbXEDBiayMcO1tdLlnH4d8eTaBmwC2dNc51ruy6aTI
	 CXPGWTMSjNLNau4cTdmp/DEQLsIOqQ59w5Li0RcSsViNjnEiVuzvsidJaM913Svp6X
	 /KgGpqPisuCeWTiLq6u784AmlgE1JxOIG2zGJ3y9Nd5Eh/k/w3qscSdOaDm9VpywI4
	 dNdSPB0Mt3pQ/tTfk6cOy5zfjHG36/wImOwMdSTEIDTAEWQB9smMPne0HNCOy8GSbl
	 NganNzElhS0Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA4BCA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136243368.3122.8125919880444834721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87598e3148933332c307ab3486515fa98e5d4ad181ba9a5b61776e24614acf15
Date: Wed, 07 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791362433
