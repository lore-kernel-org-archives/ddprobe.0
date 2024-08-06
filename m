Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9EB166F14
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722988554; cv=none; b=NZFKvqwO4k4/ioUJqoe/QObYxQkRIv9nnq8FOinuWqfBK4kVVSlMn86jT/1mgiq53ljR+SCfgHitMVgbALNYTc0wN0jhhScXHAC1/gPtjVvTom+lnqr/jwHlHPxp1uM4RZe1l6aqDey2pcVr9xmoyca9QCK+SXQAqk4wN0iC2ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722988554; c=relaxed/simple;
	bh=zGNMh7jec8WXB8W0wu+JR5iQ6HRFWy2lFtGfpt/5Jlk=;
	h=To:Subject:From:Message-Id:Date; b=BhQ69p2dMChUyGxHjmquBWd6av0o99InHRdvYUR7ilfNRnDn+vGQjvoT3s+39XJ4YEJxixzYHVGi3G4THk1mkBIXHHXgjheCTK8V36Pz1/LvtM6c2Ij85o5Tcv0JNP+iT9IrDIVCXkElnc0Zt5bcWU0ClxIlN/lgBdSyAlrGE1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSurtW0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSurtW0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC0BC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722988553;
	bh=zGNMh7jec8WXB8W0wu+JR5iQ6HRFWy2lFtGfpt/5Jlk=;
	h=To:Subject:From:Date:From;
	b=CSurtW0wttH0bb+sAVmijpYAqaIaDCXzeS0/XEFR4jl6RWuZVkdJwlXfG870xDRM/
	 ZlEUSia1CY8oE7LpGQw+rqS/i4wmXPo/QD9UUlBoZPAjYqpG2HDd8R4QxaksFSngge
	 QTEYoWczc5ypdBJukUFyYyMqBpYvT5pex2yg+DNWFKqURjzyXwtItoyuB4eC0QV4w5
	 2owZ4GtjgU+eLdms8Z+mQmbUpmDDz/oEt5MoBA3TDe8i5s909HrbGdY/q1X/zj8TxD
	 0pT9tg59rk0dfuaWE/z7/n48XswPxAHaM61T0vbFoI6+/U5K7/Pq36XBS7RLxLI4Id
	 gNM4EX9KsRAtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D34C49EA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172298855358.13560.18391392408458511086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bfd05c18727c326364099021953469c411288dd6d269089176424c26f5c770
Date: Tue, 06 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722988553
