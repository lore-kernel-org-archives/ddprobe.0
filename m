Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2247B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 702CCC433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666324853;
	bh=pofXZ0AKpKXKh3orV7K8QLswwwHg456JXflALrv6l6M=;
	h=To:Subject:From:Date:From;
	b=ATufceeNYNC9p3E1yWUlj8ttjr93ZHT9QqCzGfNz4Ww5J+XlfcQ1pKGoZQiGmJJgG
	 lm9j4jKE/bgbwyZrbn+Lxo5sMFwhAwENrrR1KNxhGAhxnhOgkYkQqVdYFOatBnUKwL
	 EPW/clDIyJ+39EKF9dVJrHdVQ6s+Mv3q8gUK277z8+IaoHp4pbNWkorLw+qRUIV1UV
	 5fBD+i+4hksAHXuL3e01y+g7oZau8gznfMxGSR3UurMZJkFli12h16fR0o1wWzvYGr
	 B7uDMK5W7WthP68HG8WfiEL/HBpJU+JcF/Uq1KrwrCeMi+TuZqCDc+F5o5zFMg4JEq
	 xrsk0s3rkw10g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50503C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166632485332.3392.13019339532910086276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30ebd244570f21647e48eba94356c6465eb45d7b229782db6d68da071c61b40
Date: Fri, 21 Oct 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666324853
