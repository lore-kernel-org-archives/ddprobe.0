Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39019EEDE
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747541394; cv=none; b=VlE20jf+jXPfpLYKrqf4lHufEY59lGvQXNQDDAupnh/W1dTepwMMEeJoRS+h8R3H+zpdenE9MsUEnP/7PI5aNyIeYRlxg0jMKEvLgX8K9ZtF1LIApUSJFW7a6Lh3zITyay8RRMIa2iepz+CKsAIfjnbHXXTQxQnVxPZ0i013GmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747541394; c=relaxed/simple;
	bh=gyAmUvbMbYfLITtwo3xcZ07QjoZTCoCbvaeTIDggX6k=;
	h=To:Subject:From:Message-Id:Date; b=X3+nTulsrl3J4bMe1rPaQ6+6zeS/DT9oS2brKVJDGPvJylFHys9qtSw1qVcpyzD3RHqyJQIV62gxDjz/sgNhGUFiapAY9wKDz01bWX+5Q46Y5CBDo36vNVsqk0XoWrVbBn+l86L1Vg1I0RfgGAITRy9lIuARDWnYtZ2rVNN+HlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xv4a35eH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xv4a35eH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23B9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747541393;
	bh=gyAmUvbMbYfLITtwo3xcZ07QjoZTCoCbvaeTIDggX6k=;
	h=To:Subject:From:Date:From;
	b=Xv4a35eH/WrZObcYMdwxLsJUHPi1pRdQJGjoFRz/9mvenHFfkSqY05xBM/PRxASZo
	 L5y9cz1l32Qh1v8LxCVQllE4HhcyvoPsLtSrzD6nUCJ0JOAfBtXe58sKOjc/y0gx5a
	 5VBg7kJZKgVLRT6ucPXvRn1IXnqg33J1DlQVECkwLzWxAkIZV8NWokZDs1lhbLu96P
	 6euNKlDObyKNyDYTKzzLRzhrIgsHaS1s+LrSsI0TyPmxeEvESJUGXH4UU2lZDG6T4R
	 rw6b2+wk25UV95/VdviOVuzlNDZ2vC4d27CxTuVfzK5hA64mN4Ux+dPNAX0Rs/qU2V
	 ymYUG51HvCT+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C7C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754139357.10155.7290392289754671285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849b4ec093ae6756026ae23c31d69bc8dde78f748d22a9d2d38a3abdaf704b5c
Date: Sun, 18 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747541393
