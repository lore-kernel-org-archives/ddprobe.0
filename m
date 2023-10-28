Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C957F5
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTRwUwt2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BC7FC433C8
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698464896;
	bh=igI4lq4dluf3DozmuxYytWFiWWOBfQOTHREl+LZcZj4=;
	h=To:Subject:From:Date:From;
	b=fTRwUwt2MHzKPvKC6Tv6YV2lM6u0pnh7qbqGeUxNkM7NySBDzGJTUwYTcHamKNtjj
	 yIEOyh1NcaijEsnCeZWbAJn3LoVrgpDIWS+Tfsf1sdSbNVOpc/Oymo/Hfiv9/mOv4U
	 Cj5K668/xLfJNQEsIL/HbnKdN4LBsdePd36qsa88qcdrnimHSZ1+nqCmr+qcKwjYBQ
	 Lik7ecORHyYvcFVj4jp45ky6F+SXzblT44mnKf3AtFioYZK4xpXPodkP34W0x1Kgfp
	 GcQZT/d4/D9SoGqDPo1yxGnB98LExOHwyQciHGPguWWG+8Sx+ZUs2rAmSWe4Ckp9dx
	 yJYy+phdqk3dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B8B1C25B67
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169846489643.26233.12927904986908260485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1729adc91ecec0566e22aec378e902b03c63115c1a9489ff63a006665993e9
Date: Sat, 28 Oct 2023 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698464896
