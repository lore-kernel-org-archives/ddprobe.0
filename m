Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B857E
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 08:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HinydY9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C92C433C7
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 08:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697273228;
	bh=NjwPRe/OOAFr6KeBTFn1PztkAizeO+NpjlpYWxWN3yo=;
	h=To:Subject:From:Date:From;
	b=HinydY9wPU8BfQUx7ymZMgURE9HTcBB4ZFpwJaAQj6Q+wnwaPi0XVXZsuNg5GExwC
	 MWjrSkf1jrNYlb08Sqfbtxl0wM0v0B74egjOQhFknvge0O15Gb97KXkgVfYwIMHSuP
	 BRTDc2MDSm9s4b4k8isy4KiYvZa8f7uFUfJN8Q0VDBhxf/GL3Lmqm/DZDfSAP8BNz7
	 ep1i84ZlRxqDVIFcolTG0YWzJr9E43i6tCqXg5wI5yCCm8CsfEKQM2k3XK1ZC9CC3m
	 1G9EnajJkhpJq9Vml32XbasqHfiGO3ybF6BIJxfCkW8mw3hhcTCPSDf+V5VUDVol7I
	 JX3PUiwm0ZhHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA46CDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 08:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169727322869.14982.2853836910199891302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ed8f39b24195aea7c91ad6ec3d924d1b16837693802d8338a0ca689f81f5e6
Date: Sat, 14 Oct 2023 08:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697273228
