Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3BBA15B0
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 667D9C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667032254;
	bh=Gs8GCNiRX0DkwQ4AQnKYy+mVF3Ua1gbJsvplzzKN6yc=;
	h=To:Subject:From:Date:From;
	b=K+evXNlFXVPYsak6tG1LBRShCoUvZ/eeSnHxjOKsC9+mpy42xUrSVpVdCfJ537ehD
	 tjUUeTGya6eGYAReAzOB05CSP1OFeYpE+Efhu862nd3P+19f9rK/VzJ+vWu4c5OuRO
	 tNM+b131Kfy3rg1Ud5PO83sbouvA7HBM/oeI+QIYmaw4KsMpevmq/SYZdrAjLWPlr/
	 1lhWSHQpA2ZzF2IWBX5jg4pEPZ9Qkf9JcgIQwxY1MXulxsYuQiu9oOr4i8XidVc8W/
	 /OjT2v8sjwJ1dT+FIJ8AUwyxEOEfV+0ovsav40YWjRUhR507HU3j5sMounuflAhEdM
	 P7Y6UGv8G9uxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DD9C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166703225432.32166.10498146841531159326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2c545f5125c2611b0db5607fd9f45355c4cbe71980aeaf6dcec1c46a12391d8
Date: Sat, 29 Oct 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667032254
