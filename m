Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B631D4432
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D2CC433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663247453;
	bh=OJeb46jibnlGJS2ZD4RpQmphCfgnBWi8Bp2soV8gOUE=;
	h=To:Subject:From:Date:From;
	b=fZtGpXCDxYdRuVLII50oQ2zRzm8AbLjRrksRpASCBYQdiPQTz62MP0UIc/MzJ84GH
	 APlLU5J9TzmnFHJbYf7zYsKDw30GQCLunZ8uqyHqnPvhZ6bzJbQzwzhepg59doXnMS
	 y1Fur5U4Oy8bUpPJVDTgSG+ENO03dhoOOb/oRIdeKM5Re1xfGYpc4hGauGqmSRPDdO
	 qq1RKWNuUsVA41jNDBVHp+tQmfS3bDwIzFb87UBXYfL6pkz/o6kSoMA/l6ba9E8n2V
	 XYzBtF3InsU7ezyVlOyliKlTqMzbEZcQtOhQcHpU6q0G0IERhcGDuvH2L49xt4LMno
	 xyEs+Wq88mihQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE59ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166324745337.7690.8104816493381582081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0186419070dd704ac8de7950a579dd4b335fb6ed2d14e23c16888cc7443b1e6
Date: Thu, 15 Sep 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663247453
