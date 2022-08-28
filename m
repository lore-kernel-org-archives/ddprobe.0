Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D7A2F43
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77137C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661713852;
	bh=87hg34b95Ls8hhc2nvvGPlz8SY48DpjtirIwlz8dS6A=;
	h=To:Subject:From:Date:From;
	b=Rl4PwCsW5bfHTzmY769IXCYtjLxUspjhv0XmSpyp9Bgu9p1diTrm5/Mt655YFyU25
	 os3YfJzMtOj9hhuFg9lWWUT9+d7abtrfWGK4vAXETLH1ccQz4SYHLu6XRwGiNjoTdM
	 QnmWFx4cEjWHklM9t5rgBEmziVTCdaLMTY6/DyGpZBSxh0kzjK2B8kr8S7ueKXEagX
	 nqEjQwaRiDf/GRJNvz8W50oSkYfr3xqfuIX85WR+lMiBPBhJK9H4HUhIJyOlEpevE6
	 C48DAiKdKyRjVhlm7I2zovORb0jE7aa07QiGdyMCRJ1p/g40qF+66baMpLl3GyVRIM
	 Un6kiaKYZYqhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E459ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166171385235.26309.9329417094492527174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5723f8259422c9bd46d5a07a005535c246c7b71e74984b909852298d9fc7402a
Date: Sun, 28 Aug 2022 19:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661713852
