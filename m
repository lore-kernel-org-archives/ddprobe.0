Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C6BEB21
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85506C433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673997087;
	bh=ZnDyOB9LYzznfS2H4i/f4New9nWM9GLbfwcmR9xw1FA=;
	h=To:Subject:From:Date:From;
	b=KxYuU9C2i5iRhnCIu6qsT0C2q/yrVs9jQAeAxQPaF+n/ZgR0wBUI9l4kY+RkFJZDb
	 +Ynot0SxyFtC3IRVqms5qW3RyHKOP6R7LxgcxhlO+5WRX4ZpssFkyYQcjIoqPvuxnF
	 jElHaR+N09HxZojyQUgRY+wFrDUBAIa85B9fWq9epLiCPrjYAs1KQgYr9FudeYHxne
	 S0Ihs69tcWKSKKMWj8R3Gv5pH3vJI3kjuQa3XMzqUTmJaSgl8uKIyplRCOuysVRydj
	 eVh0D+tqqgZX8iPDYkkLLyYPSLVcfrCUgaxm5x00nQhJWQkhns6BA/stEUgOu61OZX
	 Aj7kkqqB5Q5+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67BFDC38142
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167399708741.6846.15305525263610596999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974212a9aa408f19f4005d75867e265343457869121a9784852843a9641c9c0d
Date: Tue, 17 Jan 2023 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673997087
