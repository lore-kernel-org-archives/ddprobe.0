Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E54218C332
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746254394; cv=none; b=gN9XrCOcyFUAL2DGWIi28P/dpYd1qlCRA30MgntsFAHOWust4kMxsGqg8ALUyweaPaw3wUt4gkx5boYpqFi5b7VK+neF3TnaPLeZ/s+WFphImAdN/oTl1UtjWaHrpBJHe+6HMmcVYbEYbPFyp7Pr0Zd4vlzQgR5e4VryHSSGTuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746254394; c=relaxed/simple;
	bh=uBFoVfxtaqD2yGjTQ0pp7YPtmhfJMOgA5Aqvdldt0m0=;
	h=To:Subject:From:Message-Id:Date; b=CZA4p5DBaT/Y5ECLUOsdxB0i9+eflJkL+JCjXKT5X73usxfivmX4huIY+4smnp9NucLLQZF9/B6J99BIaeAqc0Rv/eKzuBjxxDhquo5c9+KcfEarJXRLON6WkqMs+lv0GsWoVCza2McnXwZTmzNrrtROdVJ2WJGnDekIh6Bd790=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJon2YwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJon2YwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5107C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746254393;
	bh=uBFoVfxtaqD2yGjTQ0pp7YPtmhfJMOgA5Aqvdldt0m0=;
	h=To:Subject:From:Date:From;
	b=dJon2YwOPgO/t8wG0dctFii6bxM32rMg9jkTKUbJhNIl43wcD25v+/TSdQJc6z50Q
	 3Pj1gi00t0bw09gFo63y/F8TRW0SVFoJQPsnjSUee9d2c6xHFvAzGID1TvgHmlFHzN
	 qAxb5J1i1sFdsXGxxtS6Yyiy+D9W8Zs/MH3eC/bLdsRI93Fx32fBGvVo69UPDXnhts
	 sUCKhrZ20LIlNIFVyq9WJJQyb+baUIBW+TkjXTRLYkVp+kty2hc35XuqdYOi1vclZQ
	 H+ninzzgbW0F8ct1HV14SGDgUKvfnYZVjPusHL2s181RXElt6NA/fVp9AE0/QVDlxI
	 ucEirBwDs6uzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E0C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625439357.14449.2573858873331531663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db04260f8fb67628e085897fc2ccbe2735e6f68218c7954959be919f80f94570
Date: Sat, 03 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746254393
