Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE6E2F3D
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 799CDC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670599287;
	bh=ZXfkmmH79jE+qzO19iB4yuKtnfvDPLvSorJVLcP0MNk=;
	h=To:Subject:From:Date:From;
	b=jkB4Y5zERGEKRhV8eL18k4S7Lipt2CLNJ2WuVJSYuVa3HggIIydQWNkKk8tr2z72U
	 O1et/jx+hXyT+18jgcsX0hgkHapLDzV5sMTUYkJn2Rwa+oc1y9k1qhFBfWQqWI9LJk
	 2sL3cvdhhOpRHYDjV1W4GwL1EnirqndkX83lB0Rq5KSdsTEeVwJDuv4eZNcYorPaGy
	 kK5agAxcab84N4SBLPtOz1pmaSfiPlzkR+kT5G8iJZ1skSR60P6co5VKKGAc9eb0CJ
	 rnwFXcNrw6VSUYf1mN39PKZ0OOTOhuJGTNB7JfFqwCGa7KAbmv+BuaAvHwVMNrOlpy
	 rvxL43mVoMzQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C23C04FDE
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167059928740.30440.12175388665410914842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aafbd23326d8e1f437ae7b0f650f3aa12c0cb31d127527bb5e59f6dae10e59a6
Date: Fri, 09 Dec 2022 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670599287
