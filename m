Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C6F4C71
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 746A4C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669996254;
	bh=SsQ+7JVB7HE8rPwdV8Hutw1bwTutcIwTgmWCyQVHVww=;
	h=To:Subject:From:Date:From;
	b=DOdBt6osO/MRck2LOTfnMteTsuGNT/Mx5kKq952Av70M4KJKdPhg9U1uVlOzgHEcl
	 CSRiRxMds26jBUEZV7c/n0vwJCswQ/tyJVGlYdIrVJL+yFsCXabWp1vpIT+u9hNVYM
	 xL/uWujqzx4O+mXz0g3BHiYnFcNBMa38Gnjds9EwDGBOiRBnQMEdYEsuiENRWECfYa
	 3/lByIPThfw5+YoPYdOQauj84+HtadVn2+/Qe5LEKDCLrLdWldFzM39yqVAMttfXdU
	 ZHhFDlL/TLIYl2commPsyG4tfXhQDE+kZlpelUScnKSpkoA7i0a2d/MqrJ/TmQ1YVl
	 05dGXjGNzqeFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59447C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166999625435.403.3753969231426663267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d8cf0a3b50b0adbadd2b658cde6f387b24725f1f73e4d31470cc80f83d8b2e
Date: Fri, 02 Dec 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669996254
