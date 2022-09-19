Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90607E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71233C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663554053;
	bh=+8jveIimITlo1xIIFJQqYZXAz6dy+m4p3//JTJk12I4=;
	h=To:Subject:From:Date:From;
	b=E8rTQeQkDoWQW6KLZZTY+cRGhpXtg1+1p4K/yUv1KSvFjBhCNoB14DsLZ88osXBjO
	 cLjSPv668fa6+FDCPdF37x7EyKCbJqgTiUFv1vn7OHpeXSYsW+K7DWYcAyVO9gOIC2
	 Rj7bIBcBnLaCObuO9+iDSJ3Rx0MudgesaswwMrqojUR+Zuodk5wUCpTg+lJZOePaF8
	 ht1URJm+R3AvqgRn5qxOFKuoQ5eV+8+4fOgv2bem3LJYieBZ39NLBBxU3vtmHGICYN
	 DTr+OwgvYKbPbwUhU96jwtLFEniF2AApz0xe5QQ4h3RhsJxDsmg0bzBalRgMu2RJqb
	 ZbgIRkqVBzOuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5521DECAAD8
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166355405333.8570.10231940757821343209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6433d6d9154a68858b5513abfb7a54024d127a62e3a5dd4ea24ea83c733bfe5
Date: Mon, 19 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663554053
