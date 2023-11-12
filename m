Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161B28495
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aA+z3swB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F6B1C433CC
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699794496;
	bh=O/PJaxs07jN6jhHGwgrbex0LON5qyTXvmUyWAgK3cn0=;
	h=To:Subject:From:Date:From;
	b=aA+z3swBekS31/Xx45WFBLxIVwpzQiLUX3mYMtSj36pObbGFkAso9LTRdEQzjfv0w
	 37n4IgA3egNs7c+4pwAC62C0wcVGjhWGi4/9QhcT/v5yMUwZSelV838wDsOha4lB0u
	 UKIcitfzisBdNOP1+wbHU6N8zIaG0ISb/WwucIqYX4MqmLvwvvXVBVzlz/KYCJKnWH
	 4p7AwMaRtdR13/srcVlnjh7Z4c/n3U+i9oRKxTK/M/YH6mFEsWqc2O+Iri0bQ6kP5w
	 v04JHAmPiEmpFaSHWISfi+C1CyJxTVkbKFtIpxA5/PtyZjCAWlMwB0WlqZ+PqXweBL
	 4mLJjVVvut9Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6691EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169979449641.3405.3068332068534688512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34774959444b4659790abb494da6b9627b5943822654b8d89affc4b91ebe62e5
Date: Sun, 12 Nov 2023 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699794496
