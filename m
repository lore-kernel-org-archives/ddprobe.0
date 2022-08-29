Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89C1179
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 00:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FAAC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 00:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661732452;
	bh=qIvy0fil7CEfb0GcvL0Rfdbs4rnPU4LTXOH8BY/KC80=;
	h=To:Subject:From:Date:From;
	b=Y+j7L4FmK1Hbgh5u8EY5QmWKyXWgQ04qTiBu9v+UqaYrTytvH80JrGbaO1IHM/X0M
	 XO+VtBmAHaiNXYc0K+E6vg3pVXbmNBUbk3IXTsJqHLOfyQ9Aegu2nEsJwbZLz14qoL
	 QHk7tOxE3hSM+tloXQ321ZQhS5lZuQhngXvoKYlu97DSz8SFWrs3DPk/JdPIApE01x
	 nAZGLvOygU360IkSP8oeT5tQjfwB6mYlDqsWA3VE0IXif2syodkXx2A++ioCyIOTuo
	 14GI8ABnViYviNqrG3nyiqqTxE5dP0twElBajxDDNO/NyEIUSY4ZFthuSU4V4T1Pm5
	 h7JjdzVTAgcDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EB8ECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 00:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166173245235.1625.8855388606587774984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db9db28fe44b2d0c9dae0e5c99a2ae712eb8651e82bf951658bf4827a18b2c4
Date: Mon, 29 Aug 2022 00:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661732452
