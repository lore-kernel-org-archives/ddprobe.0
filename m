Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFAD13013E
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMzx7g+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A68FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702684696;
	bh=5VfEDNbuAxS+VPKY3DHBEH4IqdpPlEOMxPR0Y224pMo=;
	h=To:Subject:From:Date:From;
	b=dMzx7g+Dzl2krObZJefKziRzSWXktwy85lqeBRo5qYIiEzMW1ptxe5FUPQL3nD0uD
	 jPb3zICb7vV2A2NkDU5+DKD1JsTile8BV6hnscjr4ydj5PxU2m7dqSUze8/cxgddQ9
	 5AoNtQvSw2H4dFtWn8KXqlWv/RR+e+njAAUP0xswEcQql/ujjQYVjhZooAMsyX186L
	 Bkhxsgt11IqNeYki1dNtgiMGk/mEi+shKdv21GTtpUPLBIls+B2X1T62kaBt1zw4LW
	 Tz6UyoKY4Q3xF9ex80kDaq4HS52/RDw3/l89DWPhbHcOPTQ72xTFJ0YdSUG3pYZ84o
	 Ya3SWY6KYTIZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60EC8C35274
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170268469636.28429.9749565910028829096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8f28991fb32c82a39092c29432a69a919ab149224e98d439f0e3634adf8cec
Date: Fri, 15 Dec 2023 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702684696
