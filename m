Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71EB51F5437
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777642054; cv=none; b=cvCRaTVlJG4fnwOoA3cj1SdghHK4NV3yGGlmQG7A/2ySRwwaGJ9P0xf097fl/ROQkjylDOD0E9NS9SRcPQEKy+B73/IQDvFb+OO4Ifo02tK4u4H+Hp7th08akXC/Y6Dy0gXRDH6fEDeNI3f8cfzjSpG6HNPQjrpKvj5LpuQ4DaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777642054; c=relaxed/simple;
	bh=7R7+nHXunGk1dMmoXP4GDV4VDSk0VhhpO9US5evhGQ0=;
	h=To:Subject:From:Message-Id:Date; b=f5J+LQ/7e2y1VDbRjIukYqCXEqLqhLAQGS64EHATxXVgseoXqHAgDVZXetQOzuSa8IkuUi5iXpAPGEgeDGcTkw/4Lpg3DnYxo8faQDVBzAkFJAuBuMN+jHcLldHhKx16aR8iKTNj7vQOKlOSzKpNGP0eowkBQ641biYmVOP1eNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoZ4MeoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoZ4MeoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8650C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777642053;
	bh=7R7+nHXunGk1dMmoXP4GDV4VDSk0VhhpO9US5evhGQ0=;
	h=To:Subject:From:Date:From;
	b=YoZ4MeoH7mWk88LI6XzRPswCTCQ6fWw1bJm8w8kZA/kUQ2VjVlhuR27nAlyvB/57p
	 E8XUBNN6z4MaL5KEzdsSaXiui5/crP1ZbG5ystRMM/jPqd0WswXOtQSE9ysQJU5Ilp
	 5IyHHvVAiF3j+u21IJofot18jRhhOx+DtChDX9zkzRipK7mvM5X7K8UcTxvVs011Zw
	 xIfEyMKfEYqsp0XH3DbyrqSBvHixBjlGX/V1AuAmhDk6/4R1a9aNSJjpp7xponL0qM
	 JSDRZ7hI2+FmadunCLHWXk34nza9dj8FGm172+VYB/7GdcWrG4I/pMlT3kwcOwOVuP
	 /R/HnGIxJ67ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA306CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764205368.16516.14622915298072039578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a19dee3e367fa149897b111b43f10eb9b87024bac503d003cd698f056cf9eaf
Date: Fri, 01 May 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777642053
