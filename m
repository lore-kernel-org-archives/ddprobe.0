Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523381952F
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 22:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08F99C433EF
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 22:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684190466;
	bh=5yZSuWhEqHkA51JEhHskGdRYPi4e8FstGrVnoP4iX/o=;
	h=To:Subject:From:Date:From;
	b=SnMvN9K2Xv0OM94uSUhQYgTrRnaQHPuZAFSYVhAPv2XpYo85fcuoR3s4yZviGc6Za
	 O3UXh3B2eJep3SK60nZyeP+ZaHW0A/utiZaisslJY5ZhRJltQalxbsEwM0TVAuEeao
	 ucvXo4zxLq9EYQSQ5kXdMH9COn6Vwl9AyiPBJ6pxf/tR/Q/0KOhVpUgb7Wlwsf/EwL
	 1il6fy4gAG5lHxqEjj6kOEAgXyKP2w/Xm+zGvauf6gxz32tZOgsfSfsrnCUhEbDY5v
	 r0xU0rGHAgTC8wAmo1/dcQBAZ7Hl/xcbhyFrWFdrdCT1RDfyMTGT3G+iRqIbDOx1Yq
	 griKPmRlmb/7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC134C77B75
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 22:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168419046588.32084.2048521095755512901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c3006e4a858086ae00bb7fea1c6e05ab22d47c0d1edf167e1710f71c271fe1
Date: Mon, 15 May 2023 22:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684190465
