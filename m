Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA585CA1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 12:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6495C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 12:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688214248;
	bh=fmgI6NrL6jr4SiG9dHCmEsYT5s4JwCskxwCbwQq5Qe4=;
	h=To:Subject:From:Date:From;
	b=jxUw537B050ILmf0Ccmmgc/s4mIXBc7tvUC0bo6M8NY8w850dSc1p1Hx84Y+QC6Rg
	 /qwsR23uiCo2rrOBrjlLrE8ziOmd8GSUXaB22O3JtX2g7nWhAe6lF6Xw4ytRggHuBt
	 dLJlofXP7BmuyErrcLqFML5z3MHHKV+RbZbTzmdgFyBxRy4+tN152ZSqoWg8cj4TB5
	 XLCie1G2SOeOFqgDD6NApSfaLCFXk/mr3VPH+IooCnjZeX6Xn0etHJyqa5K3+wr2h+
	 EVl6p1tmHpyYvKM4xQj3ZPeACkdNFJzhAKzJqTN9SOM4tB1YZv6MG+DYPF6ZiXPMTE
	 FAfJRG7yJnl3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA671EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 12:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168821424870.32524.1212248868261862261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3846550903c5a3a75b18b06d2a895d5519bd6f958bbb7a7a11eeb28a3ecf9c64
Date: Sat, 01 Jul 2023 12:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688214248
