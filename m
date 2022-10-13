Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE94020F8
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7446FC433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665645653;
	bh=715vjoyrEjQNPDUDqOCanPNOn0qqZmsh9p57GxUy1BA=;
	h=To:Subject:From:Date:From;
	b=I5cvqV+eEAsWsj/xiFrxVzYiLFGEUQ/ybq/O+vcpciU9h9ZRnjZagbDd9N1+Q1uNU
	 Auf7qzTyGWgbv/2hZM0Pt47P5GX0cISR82VouXfsad5vdR4pK7xEf1HND+E/VXVCw0
	 woyPf2/06AeSA2aQGVWWI3AtK7O4wagmbRjcDuMuoAMVRWh1J5DpuQQZmH4cEVFosZ
	 gTrzQIvb+0SuiIjJpKGzbGyabsAg/7aGLlnixRBHkShY58HcfojM1uiky/BC6jRFC1
	 DtxysBwIMKQjA+FQ9BjLB0uothDjqFR5kgamz6nr9cmE/T8N9xlbhXFV2nEXLZ5yIa
	 W0AVTwEe5irbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58072C43217
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166564565333.23115.12333911175912497597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c815d46c91d417ff39ff2bf42bdd53f07a707d5b26ea8bad5841caeb6dccd1a9
Date: Thu, 13 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665645653
