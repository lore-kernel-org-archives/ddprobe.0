Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CB010E1
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwCQGlBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 922A2C433C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701067696;
	bh=3PELhGctVW0Q5jte3k1fEuku/kYHWmxwVRi0kMqcMO4=;
	h=To:Subject:From:Date:From;
	b=LwCQGlBcYZbMC6ND+AJnmLJRP/rjbmX9XBDY8M0HbuUjmI5Xp7sfbnY1lyV+B1Ez3
	 kqzHtpQOMSYd9moAUE9yKqRnx55BJWCB1TJGB+pirZKaHO1jr1Fug8OPHLR3UUNsbv
	 Ns6LQ5bz6NL3xiTxynNLos/dc7LIh1WkodiL59YjqocMPLBZjrqzu6ctHpwU5KSlOc
	 XgE4Q/fvgfCuHUal2INjh1r/3yXmLmLiTZVXCS5+QKNidzCoZQ30/LoQWyt9RQ6pqJ
	 FXaucLaPBpaSQHzeOBUCt+7LdejwmPJRNACEJbpghCf5Z2CkLJ6UDLRbZbpNZpnDzn
	 lPRFID8mX9lyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D0B4C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170106769642.25234.10039335541945149561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f347a018ff293f578e40e8650c3e7621eb417b14310ba5d2028def73c75c835b
Date: Mon, 27 Nov 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701067696
