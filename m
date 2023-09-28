Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FAB38BD6
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 14:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBDBC433C9
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 14:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695912368;
	bh=jsgSvF9/qps3ERRdqhkmhs4Rluya0VYtEiwImhofawg=;
	h=To:Subject:From:Date:From;
	b=QuOgICbW7UPjUzYnulFOAng/gK2o8JKo8+NY0El45LlMEtNGDSoH34fCMK0lveV0G
	 VsmW14G0n6/STO0bOuWdW7mTomYHANOJxKslniVeGKcryVk6yZYhjYuQFcd1RigX1b
	 6r4W6FCvq5Luolmv3U9qVm9TtDrIGiRHIn0F4EXDtBthb4Qj5V3J+Y5XQsRwyTYLBv
	 nccaN78VRH6sCTDvXaeSx+U9rzzKSHetsA5JuizOKOMWlvLp567OHZinGLCdre2REK
	 EyUMm/eb7/ITEH0khiCWIKdv0f7t69rUzvPGI+Pq44fgIe1ROWdNr27zQh0XVE8BOo
	 En3Nz83HT+dtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F18E732DB
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 14:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169591236868.5798.14921886105123815586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379c298d9aeabe9ee0e71413d4196151db87b2d07d0d7b942ff9b01512e0a323
Date: Thu, 28 Sep 2023 14:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695912368
