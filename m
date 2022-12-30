Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D1E46AE
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AB0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672436487;
	bh=X4Rm4w+vGy12cJ6rnO+D66k+kMdOJqd1yPCKplA63fA=;
	h=To:Subject:From:Date:From;
	b=uZmv/hAz8UtrgZLZBibrl5ME9Dg7F2zqBGZYg5hB8YU9VmKkgsp8hKdBw4kADoC9J
	 wZvViJSdUkwkBfdNkE03FM2+lex+FMasdaaAjz/nt9fsF3JiYERjt9CI/bi5SBop6x
	 dEnU7Yy4J67Dawq7xV8WeE+OgG8kkxJ+zNsO+nE53v4hS61fVJZTMuLaocC9uh1LBP
	 PVKQS7v3AO2QmjH9S2Q1n5Shblxdjgjnt5UbmWphT3pzvV2/I8HheywqEzNXosmPtb
	 U0XmqOECS8h6Zgp66an5it+L62DjuWEWa741bLz2AdJmHyJobeDLkhyr0fo0W8umWQ
	 x5DMUtB6zIHsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88761C10F1B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167243648754.12723.12837580777652010294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac4f9a0166df39bf28c9c744bd553e29604d9c348bd5e00e41b968f42bbc868
Date: Fri, 30 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672436487
