Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E64A473
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77DA3C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668798654;
	bh=k4sbTK/nm10Vki9KrAG8MqQsCdFWtThoaymLsXckkr4=;
	h=To:Subject:From:Date:From;
	b=gHqlLWTwFRkIE0YAt8BCqmEtcs4jIZiMHrAZEVfI+dsmAyvbM+rzV9P9tat06fSDF
	 czZ09GYnLCtiRq+AahLaLsCibPwl7+wwY5GkboMKQJ0gH4tnsvINx+adsWOl4g/cKZ
	 ac0NlnOuxu+6JV30EPZMreXGOT1CdTTO9qjPVXS7hX1JnHgiIbZDc9Ofn/z3kFJ32i
	 51eheg96a7cBmJGdy3ihY00WLPIhrd0N6y7Kv82w0UeNCJU3QVbtG0AqnIDq5ilCkq
	 z4jBGxE73QP3VJnGNxL8bRaG8QpkqGQaTT++vOq74B+j7lqJkttlflS64hqGo7PBfI
	 RavbFFvutzLdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED51C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166879865437.17910.8221527465020708143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6464a3d7434e50fccb8f174fef7dc1b6f6c4c261094b65c64c6b55ba8537218
Date: Fri, 18 Nov 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668798654
