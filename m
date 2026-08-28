Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FEE40F749
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787920835; cv=none; b=IwhHvpPwfSwjyxSgxjs9qmtns/dFrksI5DX6RpasrjFE8U/Ge22R1cr+5Z7IrDVc8cbPowE0WxIHxeJjqP53gkaLlDLvRmkQEcH8xbQIb0MZOBFwtckhfAlGrl+cu7WZKIIX16+NOsVuTRK66fPrCPqsO8/mR9B48jeqj2TdMe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787920835; c=relaxed/simple;
	bh=QMj+G6RTsVrwo9SMmEioTBVzB5fgQF/GWNjZOU2Ux+A=;
	h=To:Subject:From:Message-Id:Date; b=rlD2FQlZWQrv+yfPl0UsIgFGeDhaEL6lnXc/81glu/lyxxqtf+Ga8mCyWOdvspG6HhUgDCk92W0o0YcDpnlNhMGyJhjiaJnQXgXJ/6vMS6upmwnhee33H3wXa7OVavuApTkcthj+YtML8CPrc/zZM7aOdqfXyNgoB545fOQ7AJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhO9gpgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhO9gpgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EA1C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787920833;
	bh=QMj+G6RTsVrwo9SMmEioTBVzB5fgQF/GWNjZOU2Ux+A=;
	h=To:Subject:From:Date:From;
	b=LhO9gpgZ0y475GyXwsHu5fk+xXSY3oM4ufY3nBHRI8goXuHzSGl6aaFXg3Aq92FlX
	 oLxwMwZFUjGkrEULkg1D416O7r+t9tqQuZAd6DhB4CdOgyYn417y2aKv5wx53JQkhG
	 HRDY+wDYaV4X7kETfTAmnwss3vusQwgCH2+wZLWPlGY8gjhs/abb4DQI3RBzbRmj6g
	 Gw4QZA40Wwf7owemHnUl2C4uDbg0LqSQ0yw/kG+60SYT1a4yPtf4uIEHYiHCO3SrVd
	 A5qOrqiRqhM1qhXqK27eYPkqNLvBaAJYTpWf9kvPjHNRGW7w6VNxN1+dUkS4qsyM+9
	 Fuhqz5pTmRQDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FD3C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792083369.31579.7074645682430306250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0026b79160fe35f563f1f25673088313e2db54984d66d012c20c6be29171c121
Date: Fri, 28 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787920833
