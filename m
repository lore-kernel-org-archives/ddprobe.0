Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8C1A33F1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FCB0C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665093053;
	bh=sVu6updm9WxYT8ZSiH/g98/2IR+bG4EYkg6AGJZkRIY=;
	h=To:Subject:From:Date:From;
	b=P9gGs10AzCVe8tZDVmRPxoABa2Bn9fctH7NtowcJH7gaAJGXb4vVVB4JpvZFcAWJE
	 4gjYcLmnvFXBaoFWLVWyTfn3v0POAtouKXYtckk6mO/jTHUKB7CztdJGlTjlVyHj52
	 qd5tJkkqJCyxcmykPUvIioWqW96HUhhTWJMlH3QHLpmloE0zP8e6x63ETiv8ttBg2D
	 tUPRu3jF0Vy00jKdt2gGo7fZroWs9niW5SjaJvyTl2lMIx/19+AUYvSHqvC0xe1O3C
	 FArljEqfsxDt4t05GUWpdFZdXOskID7tm15PamHioEG8ZRpwiVAM9+Y+5peHFH4IS1
	 VMrWCGBdcqZDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54037C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166509305333.27422.17891504917182343389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c297e0e4ec6c000d899d8319c0ab830673843f8306b3f208936b46a3656444
Date: Thu, 06 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665093053
