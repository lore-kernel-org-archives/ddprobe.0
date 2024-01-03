Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE4918027
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqffR1sl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 882C2C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704262696;
	bh=gwRI/YUeXba5Qr4ZvzdoQmVxMchoIFv+wGAQCQn5OLE=;
	h=To:Subject:From:Date:From;
	b=EqffR1slK6j+YnysNdBMh0noD/8FFM1A05h/DH3O+u6Zh8V/QNyMuv9N+Q8IWUQWy
	 n3v/H73q/TnAa/TuIAHUXoD7vKVnGchDI5Qgx1GuO2GcMqK606RR2VyIx846iTex2a
	 FKt9tvC3MfzAmJcw475rFnRB2MOBTn+kUmz371OyAUzhTwXv9eXAZisCNFfUwmcIin
	 McUNu985lkyuFt02dY8uzfqgTv9PNTr+3IBkcpZogBlLkmZ3kXYj9t7XRcuG4wCO1X
	 7Fl/hCIJk6HhLxI2fq+geeM4+wMwS8B9pL0UHLTVKMpVaiJ2cXBskSe4XNPjLXMvQS
	 qpivUAWXeM5Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72EE2C3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170426269646.5944.7111424338603544968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931f4c78b15827f172962db45dcc92dd7c132310d742ce7e5aa7d81471ae5eab
Date: Wed, 03 Jan 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704262696
