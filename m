Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF722E401
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Emyczun7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FCACC433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703497696;
	bh=OY8HI0cyBbLSs5IBC3ztoxXWVgxjeR6sc04dDhUGvsU=;
	h=To:Subject:From:Date:From;
	b=Emyczun76IjAYObC4tfpRbSzAKEJ7Tv2iQWWQfTTG+CKr8Mjp/zRIpT580LxHYG/g
	 yddN92K2IX6tmS7mxCxsddtLGkPyNzVfrTrQtm9nwgs4mHIy2moSLc5aMY4sz6P42g
	 4xMI0CuzNykhj+Cb2H6KW+2+Me101KwziMEO/jugYpjBGsPgR16vREsOJlvXsafkFJ
	 Hh5hymiuw76AC8S99V4AQrditvdV8bweoF47V4BtHtBRylha26GWT2ycShbasu2wa9
	 Nwki/SwBhcZZAyYzgeBgE9F4Q04dKgBPlBN35nMK5gf/aFNLn82ay6pZbH4+LlJScc
	 ZwmKZtSkUq3kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D8BBC3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170349769643.390.516858432668667850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bfcba3e1281e25c4f989c73784754ec1a2299281c4045840f8157eb114bb015
Date: Mon, 25 Dec 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703497696
