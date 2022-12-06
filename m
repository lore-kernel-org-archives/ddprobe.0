Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75BF257B
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8045BC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670317254;
	bh=hXVqVR4bCzACsMqDcES9JN5wu9f/NPbHvd0KJuMns5c=;
	h=To:Subject:From:Date:From;
	b=uYz9L3bZRDC7FdU+7itJ6U77yJ/KBtG+i73UsT/7jnlEAhhHdfjZw6wLvN2Fwciii
	 N99wYHorXJVR83J2UVBk7mAUDhPA57L3UnJBpCVwAGxRiI4a5QlOALgprHI6A8vuAF
	 2etLycugYzKJc3/s+q9d0hbFQ2kdM7f2LTxonADN8GGtGkfuBG+io/tUCDpCcsRn20
	 k76YQqmGKA/3bDwD9DNPcQYVdGWnAZQasQPQuBrANViq5a+TVxXV/FhuWz3Mh9b8xg
	 jfSO2kn64mvKd4PGN30GVx5JPpqU+INdGyZinfYbiGDdhwdr8BdqN61fa0GtPF8GmW
	 xWYN49VI9tVsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED5BC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167031725437.22333.18030644501665661677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61dba6acea4957a5d510d459c5f97294faebbd605136fb248aab7d7eb58731e7
Date: Tue, 06 Dec 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670317254
