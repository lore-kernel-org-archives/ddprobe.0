Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48F123BD
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80292C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670845287;
	bh=gBusxBUfBzazDX6p6129kVJApSlaM8UL3Ca6VNQmLpI=;
	h=To:Subject:From:Date:From;
	b=MN6Wt8XuQmdelLMXg3jrjpMap8SrYZvqPDqz750lzOo8+pdmhdyzaiuybDqFfh3o1
	 1bOhGMcSyZ5gYNwdJnavmh1TDruLDD6V4d9HDcIVs9OScB/WSawEC4vwZRDWNnsxbc
	 A/upDXG8+d8pKzYbKzSvkfT5MlXmI3Gju5cS3td0vr5r8+VPkNzBBR05R6FtBJWd0a
	 1UI5O2MGSZFdjgdQsa6gS0BAWq8+bUp9pcBx+ejH2zMF5AZ29GfNAe0gYuErjQ2p42
	 S+tt9og7tLY0jcfqCUIBJH/s/g+ixasIPtby5hy2Mqyryz3BKjHz77LJ0y//PkwDK6
	 VYfK2Jsb0qsoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 650D0C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167084528740.15790.411996124949444669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c301f071fb56e5ec683889c2e926d0a508cc47e30e9a9124adc33af3aae9b91c
Date: Mon, 12 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670845287
