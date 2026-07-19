Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C42F34FF41
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784453914; cv=none; b=AjOfUzmgBDbvbhN51FlXJxhY4wSHq8ITUywgIeULLhLc21iKWlVoN/dSIqaplQfI8LDWcQTDw5Dum8RwG5FDFqdH/Uq1kkE5DYfWhwerZo9etQMyhcEZZO8QjiOyFjnDVl4/RZMwEh1qBCpomL8ivIDfsZA12CZCBfQqCgpkfLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784453914; c=relaxed/simple;
	bh=ey8lMRJKR3iQXwcUrY0j7e/c9a6qFsO45hVb+hrnWC8=;
	h=To:Subject:From:Message-Id:Date; b=cngZ7GqFgm6jt8PySy8X6DWqesiv/2GR4QaSrcOeBfphXYHaGawpG8pOv6XbQ3C2vutwxufg2yH3MZb/yvnTnEwzyAuBserBInODGEgllk+XZPq0K/HRG8u1Ttj+RsmF8Pql9Oi9cPPjq1/X9nkxGjPNm+5wZyGrqAxj+yBiOb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/7W0ZYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/7W0ZYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3254C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784453913;
	bh=ey8lMRJKR3iQXwcUrY0j7e/c9a6qFsO45hVb+hrnWC8=;
	h=To:Subject:From:Date:From;
	b=m/7W0ZYpQUeLEXijUjpCDe2WtxvNdvnX/imFSK9MIFzrjAUkhFNe0797mhx7UmGcL
	 RUnySriepl6NXg0DbPMw2qMVwqx1PUmsNahfeEXh6FWf0ASKreNcH3vfKwM2PJmNdA
	 +TDHTCNyMDa9RyFx0VzAfkRIbtsNtBBAWHwVXAYL5ouHuRLucikEPeEcUVZXQkxJGK
	 2CW19dMf16C7zNrIMzNZ3n7rRJoVNjFcgkXJrHw1vPJXX50auo6HqO6FmFmoNpBWo1
	 dnfY5ev8ZJw2H0V2E6/tloNKkqnemhCgerguJL0FCbY5imwfJUeF/G5Oa2HAvZ11FL
	 KgwzhRSja6luA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD87BC44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445391368.13621.14837586331115313749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a40fa9d3684b6bd0799d4421245f4563e4ffb85b7ee848f156058d3d232341cf
Date: Sun, 19 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784453913
