Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441BEA40
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 01:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE96CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 01:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681608305;
	bh=17Hn9mytFnH4HvDBrulxRL+THdXKoILlSnJt+5IvvjA=;
	h=To:Subject:From:Date:From;
	b=XIkX/c+Y+lMruBMiynm8Q7qpwpTInP0HcqucJcfgtJ1OL++Hxzt8+t3Vk4iCu7Q2Z
	 ud2KhK40j1BlVwKVk4jZxpYmrLeFY9pZ2vzScwdwg0Z2GuF5jynyxTl0KKreYZQqcJ
	 Qd4PqsbKsNZjNAHfGoWVvGhUQuZK6MIeSHAFnkX/cg8op3ELloznJiVkb8b+60eqfW
	 xCtl6pd+vIs3a9ncUh+ILnj565+bToE5Jpoj8jMSGX4ofLwB2LXsp/iU5wbxKF8shw
	 h40kFlkiu+ZE9SNreWgdrg3jpcVTWwbmCqL8Ho5DXHTceSy7x0JexmGrUkaGk/KK8Y
	 X8/u4KrBfk50g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED9DC77B71
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 01:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168160830574.24376.8038681344965693033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd326343c1e6ac2af936ed9f56116ea67052d4ad0a7055d8e680caa38dbc8f8
Date: Sun, 16 Apr 2023 01:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681608305
