Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363254D9901
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785352234; cv=none; b=Q2mGbmcDDlzj16Qnm2Tyhy9xqS/C6YyZlCoLUNK5uBHn6barJ3pZR8LrvTeeY2/sB8AWK1p1184YUMaqnWIqdqitl4NgZ6eC4E3MJDuUFZK/xMNUtA//7lNwowt3UuD3zTz7ZVOs6Auv5zL8KbmKU5IGHaG+kFDCWgBvOTbKDTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785352234; c=relaxed/simple;
	bh=nXd4XK/CUrFuHzUwgHiSR6hJeyfwRuwS2/6yjvqV08Y=;
	h=To:Subject:From:Message-Id:Date; b=eVY4BEX5LasVNvIBnZ0wj45JVtw22A+K7GqZxtJvor88eFDKVsVoWlxCDHEkEXvnlOyQoK7Qs2HAlyWYfbwLmeOXbrLn+4LBD7epSyi+P0TDJa9uJ2DOTQGqWoYEXXc/sdi+r/dbLvFy34F8ALMvaOn6/h3xpTeWStUZka2kEDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ns1uMIV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ns1uMIV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10BAC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785352233;
	bh=nXd4XK/CUrFuHzUwgHiSR6hJeyfwRuwS2/6yjvqV08Y=;
	h=To:Subject:From:Date:From;
	b=Ns1uMIV/lW8XYSEPeiu0Kjx/PUcvvo1eAoZY+LYHBM7IMKSBdBQ16L+hQ39Gcdma1
	 +T/iV8JxR9J1Ynm8m6ltaZSw9A8Pb38/D4Tu5CGyjh4dhJZ/62wKQjlR9wrbRj7+lH
	 fI86tSr+pvrdqS03fvHfkd3vTPAOEfF+HXpg00c296wusT7MR0zRIuo7ulAQs6dblT
	 OO5mlhM56zayDhRBxVJ4DSHn42zZJPRpfZJqv7KhTjmQGI5j389msDFcg6TPFqBtvg
	 8Iwa/vnz1Qgu+wFSiurjISiTcahFrBIicLYiK8rf9WIk6PKIQPpOb7Q3B2NAtKcB6K
	 jZIFM0LcXLEGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5661C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178535223373.25525.1955256546081649594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d61f9bf42283acff20a47ce99dd7a594981f19e94a224f8ca07649be2cda831
Date: Wed, 29 Jul 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785352233
