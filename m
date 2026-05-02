Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFC31DD525
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777691254; cv=none; b=p3Ms4ShQ/zVFdFTJf5a2zuwe8Gf/dADuixG1m2MoSYoWt7eFW3VxlefoPPjVDNr62wM0OAxBfALu3Na+mi+eCBLR9b+34xRIxdgnJc7jE7UvrJXYmnmBlqmqFxVdpenztS2wzPnU/eO/ueYyXHI2+eUIB8Zgp6lwp+l7y9DN0qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777691254; c=relaxed/simple;
	bh=+3WBvbwud+dzG3xw0U7R2XEPC++xmwjCD2jEVEKCfpg=;
	h=To:Subject:From:Message-Id:Date; b=SyvQ2pJZuublgJJRVeVaqMinhKB7YzeQUFzyOW1QpZTLc6OG/pWKp8KHZkcwkLM1Nql9YHe6DNCBqCc6kf/1je/rEeGc/+A+TuuIcbbR0Z/rj/eWbKy7e9SH+vD3n9E/VFdC+vfV8ofg07W0TTegR3F97E/Q7oPGHDqPSihYeKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7scFam+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7scFam+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61DFC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777691253;
	bh=+3WBvbwud+dzG3xw0U7R2XEPC++xmwjCD2jEVEKCfpg=;
	h=To:Subject:From:Date:From;
	b=M7scFam+P2OVbyH+V04j5H2ko3LQARb3ZtSIwzxcgxUODzB9drT+khuDSmS9vcT3N
	 2xldYtPseKRnD+bYBLB5AeJ+FR7eqZ27JHbruS+DhYpnIGegCP/Zfy+1lCoy0Wphaz
	 wtiHbSuO54PDtTEhsfZXQXoIZGdwaMWHp6+rLEmahS5+nM8LTlxM7ZcTRgOtJyM46e
	 L99LvJUukeqWkZNsUFAKD/LgBSjTZoFyBRsplm76WUDrEgcxm+NW2xwhfwLfJlbEr0
	 8rTN8w6eyxQU58M+lOaWB104jWRZez5XJL1ZGZ/FXkpcxEJk75lXgiXqSq7QDgbX+e
	 3ze+C5ZkG0+zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5213CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769125370.27313.5628263450592257000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb34febab91618e1b517835aa277f50253509dbfae97dd0bcf6df699355f17ef
Date: Sat, 02 May 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777691253
