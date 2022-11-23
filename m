Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB50C3236
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73252C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669231854;
	bh=NAgZrDVXQz6SWA4CP5taugPGF+ayudlVVTdEjv+b2VQ=;
	h=To:Subject:From:Date:From;
	b=n6ivrMhuXe3EEU8QSqMViHjn05uZ2EjNTxSU8LfND6ZO4h28r8LBgZVoPdMc54AIi
	 FAicyPoOz0bs8wSYKDDCtvmao27PrfVu3JMwU23W7ijGk8igOB2AkmXgb2sL8FFksI
	 tSDV+HszBcux7WXDWlwVaxTsNfJFHROCcmBaBAxBY1V+mAI13GXZxkgeFnsMdhz4Lq
	 pOq6p3dUqjnSd8XsZDP46M1xYyaeWjcH1GJjahOKoqT/TuU/7by3kN+TWF/p+ufamM
	 WoLFXjCucQFVsRf4d6Gfc8m14H0B5Zz4o0STVr5f95V1ZlniVLPpqZ/FUkl/QuTwIp
	 95OhoKazgnG/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C43C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166923185433.5597.6489100782201040615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f130077833515f8ec83022b4720660b5738e6a2d94d076080228f2f66ddb87
Date: Wed, 23 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669231854
