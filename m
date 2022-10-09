Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E77187C
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70060C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665321653;
	bh=Qf017t+O8mDbt59OKczjb0w6dlPq42JTPAfoue5f88I=;
	h=To:Subject:From:Date:From;
	b=DQTBQJveiPXqleGn03SmlFKdHL9qOM59dD1RWg40ZWfc7WvUKc54mVDtCODTmR9we
	 lb8il5tJt06tu8KE2ThuS+j9DW3YxpivYiymNb4hAH7ASo9DtnJ/TAzJvQQXwb8HIl
	 iXhVcA30b6pPO2jolFDW2tJLJpOJEeXOvP5v/5DjCfhegTvMBqlVb5d051iKRdlS0e
	 OeOHDcFJmVQDO6t7SKa7iLcXMduhxp3ceyXMH1OYcOV1XsWzIuXO5bRbnRUL6oE7R/
	 clTZecpnqy2p71B6jZqlp9c/EiT9VjmGXzG/a3PF+20/xtHAGI0SjNjNYEbDlalRr4
	 jFI4UUAWe5bHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521E2C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166532165332.9632.15176399036329332903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f913d2f39c6a895237657973995469ef7a1ac27f7b9d3b868209b656a449ab18
Date: Sun, 09 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665321653
