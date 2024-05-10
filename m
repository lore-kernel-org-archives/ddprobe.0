Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8484317E
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715370143; cv=none; b=pddyixD0J/8VVs29dKOP336f4gi7IMzk2EcmZH/h2zXbzUsDXu3U9tBYl5Vu8zH0NUKKHyVlsq32ocgxCId+a4COHCtbozSzv7HTrDlXjTO2PW3/NY/+4Mic7SGoC7C9qPcovFGX4b1FSE48ZvaEfSbqZuL8KESvtVHFlYNL8E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715370143; c=relaxed/simple;
	bh=ASflhgCnhVUN08gTwk/f6pMEDUh+C2Cg0mkXkX/FZRQ=;
	h=To:Subject:From:Message-Id:Date; b=MNHJik5fkrgoGMz5wr9URYmIxZNZN3J6YDbL10usMvSlmOq0H6jOi3YdaSJ6CU2YIbFN2C//TKHClc3mnIqhIhcH0/AOtVvu8ZLoDl7v2b/I/6M6iDt5vPG0KDC9RySrmt65303+DLY1S9axAkDR52UvxNaaSLeFtSs2/wDc8Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R97Yc68d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R97Yc68d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37DFC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715370142;
	bh=ASflhgCnhVUN08gTwk/f6pMEDUh+C2Cg0mkXkX/FZRQ=;
	h=To:Subject:From:Date:From;
	b=R97Yc68ddptmkh2Ufs4Him+CqoAipWLyKOLv0sWbMXoc3keEF3bD9NUsHXWkxu+LT
	 ITZZ3ryLwRzxWkEc/T01YjYWP4SjIKSunt3Z7sllCLyKsM6qOK2X4lmsLj62pTT9TM
	 h4k5Y18ugopNbO1X3WsD5ekfRSQfz2841HqnuNyI82mtxZ+RUIG9H3Fp1m/BqLh83A
	 RaVHn8waKPm8gX2Vq1AYYx9gpyRbMGNNQKQI9r2fTBaLpPUL2hEGW2FBuuN0sbBriM
	 ljni+5seQ+Y0Kh0PMRO2At+wK55MnaZWRP9bB+wzLCLcAFzeS7v7SB8ri3cyYHrgnB
	 1B4k1WE2+pMvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1B8C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171537014277.19895.2856514930410117099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e51e694c45135aa88290ac121559f218ac2facb02c3e51c485023eb0ead477
Date: Fri, 10 May 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715370142
