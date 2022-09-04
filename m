Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4707E
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7816FC433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662257453;
	bh=xpY/eAhH6WbdXe+92SEdIYMBDjs6J7HkGV0F73wg/ME=;
	h=To:Subject:From:Date:From;
	b=pcPLVihOVThGYAHbg6zRtoKXCHgS8UzrZyI3ONaugfSGKkCD0UWBc+QiLPvHRxVEy
	 TduiJpMJxEblKL05tFLio7KFRxncVA3E3ThAAfLm8NOGJL4WmkzUBcrxI3dz6XufJS
	 rvyLOCqxCMNow+njtEf/j3vxeYS0gPIIIBmrXBsLqPt42X0ujTZdjLRYvq7JlnNHd8
	 TMxs4vlvorK2vA1REnvtMzXLu2e1q6zSe4R+GT4DlbRjbNgvB3zPBNqIko9xn16+fx
	 pFrY/jDHqrIW8woPBKX/vEfolquSmkJ1MMMFwm2H+EzCkF7nMOBrb/TMgBpGHmL+RD
	 NVk1bUg+eQn4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B404ECAAD5
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166225745336.9045.13408375894027644564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c372e8b7f6f3e403c27031eb083a5628e1c3bd9ba9ae2f18ae057d168ea2553a
Date: Sun, 04 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662257453
