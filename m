Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCFD243374
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739189754; cv=none; b=dxHYO6CTpt5AivLFpMSOpnTYMBLGa4uiVWHD0pFi9I3Giist0gqNPYyHHN2xKchKJalTCJTTiqzqzWLcvl6JJ9lQ5+tISDIf2oekuc92VaghYwy5tK7+pK95J6dK3m1M4+yOdcgIuXEQMu3IRHBOpU/FPxpYx/YuB0nLuSWR6Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739189754; c=relaxed/simple;
	bh=4qmJUocdLzP2v3TD8/WbFaykLtJFv/oAqxALSLdLpEU=;
	h=To:Subject:From:Message-Id:Date; b=Lz7DFDXArIfxS1mHvsjpC+O709tkVjndQvh81zzJaLmUVWO8iMh1Cd2lS6l/wj9//6eucZ3bJD2m+r92+HDivn7slNYgGc7P9vlR+s0K3vvY5paDU0Roa1RD0fpMC4ODtXgjq7GLyGyy6+2MAppxI+Snz/s1q1WJ+Rv8r0EOi3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRh6jzmU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRh6jzmU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB7DC4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739189753;
	bh=4qmJUocdLzP2v3TD8/WbFaykLtJFv/oAqxALSLdLpEU=;
	h=To:Subject:From:Date:From;
	b=DRh6jzmUivTQNdzI/vm0yOqgfJNz1XtavKljuQQRnFZSccZ4Lw2jGpEg27PWWm2ZB
	 kGABKYEa+vEqFaFslsrJ6jXys6hDXdrvIlXsySsW2Bb5w5WSaU7d1aIBSM1NzK/n/5
	 1+WCxCYVm/0SH8v82j2MrilWJ+lBPQpUHoxnM4X0kYSoILkYpL/oP7dMl014oKhEYH
	 HlcFk4l+2BbGIar0kwaEPJt8rBIFcNXaPOteBv8st/fQD+MKrq2S7PZz/BiD9FclRH
	 QXeJ9X2DNxjizGzVkcgsxtp10sRXFQcrw1pcsHYLSzdmTmv3C8KLAJOan16mB9v4IA
	 AO3tOuSbSpBAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6267C0219D
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173918975364.13405.16374469237279257564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177d1303053aecede906a567e3cff2168772abd1a725da1dec77a3bdc2e90368
Date: Mon, 10 Feb 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739189753
