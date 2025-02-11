Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD1B71D90CD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 09:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739267335; cv=none; b=Xhx6+Ud/mm3GBuFV7qerxAat/Ck+UVfJMAcuBWiW3s14JVxtEtxiqdharTuhv4UoxFKxiG7ZTrm8ezvHycvM2RNlxVO8E8nIAxYgrkZEn43s07C4IR3pcXjA/eYQ2zdqCwCzQT6en+/ulxOqiiSVV5cp+BBP/STEclyRg2o5kUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739267335; c=relaxed/simple;
	bh=2ElAlU9/Ei2wUGVxpFopswJ1JPn9TtoqtTM1OvTNrHg=;
	h=To:Subject:From:Message-Id:Date; b=ci1OBOndXlWgfHSsGRq+t9ZmPghjPmNzjsVXl4bPDw9Zv/V+OPLj6mgRRdSP04sY7mTxiitmY1CN3DLaiDGRz8VwFotaxAv4ULozhcCp1rvkBrb5tvkvaCLskCLERiHlL5tsKarNXd3ptGn1OY8MRHK1Dm2ukDQ+fdmMK8bn28I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1++nGQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1++nGQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2D97FC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 09:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739267335;
	bh=2ElAlU9/Ei2wUGVxpFopswJ1JPn9TtoqtTM1OvTNrHg=;
	h=To:Subject:From:Date:From;
	b=L1++nGQzxE/oFC6sOJ/h6PEbeM+GOfHgp5IiVQHabQHA/q7MQtqa1H3c5A2s2WJbc
	 ZybmQ5BxH3pg/8OoLIOwxN5bMG/KFSOXIHGqXwcJPsvS2j+9OQP8xRSyuTODn+pNLG
	 QHPRwSWtvgIeXHqlHwxE2faXcqozA1tTmrJ9RH5kU4PIx48OmjeorkVEOC3D1VGQqI
	 TfcdQ8A0HhjpLoq9Vv1tOJoSAsuCR/r7ucYnwGgZEAzL1Dv6LbQq7BBW4bWsnuVvC5
	 ld475LmoX3u7D/FTpLNr/bKMwaYJC3JMFHDysybOYXC9NvIp216nKOik4XGeNaFi8l
	 A9k5S4QjRjaQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73CF4C0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 09:48:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173926733422.25606.1318673625012737873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a7c9bb070388b12e42a3623bb71716dff226ee36658fdeafc977c109206803
Date: Tue, 11 Feb 2025 09:48:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739267334
