Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EB65C97
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 15:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3787C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 15:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688917028;
	bh=FjabKaXeOfYauvR2L5J+U3AtkhrsZ+8M1kJUQndZLfI=;
	h=To:Subject:From:Date:From;
	b=MPKX42SccRbPG+05Mb2601RaGXIMOe8NZrQi1uL00iBtDZGd+pPC/qaqXWoMEHrMJ
	 6S80BHDK9Tfhz2Fj+R94By2H5vBriXjsvSuqfi/rUvXlKi9F5DPHixQvc2gh6OH36S
	 dxTN/4uGjK+Mhyqk363252vb9EdgsEGpw3FGmMs/Dn3mXas+t6PPSEhsT+Q2nbrhcu
	 Sw4+mf49WPIOmmuialwgknxb5tepiacB11OY4aZR03R0VJYdJcvs46SDOCw+5/Zhgt
	 e+P1V5PJlR8OXfwcPqmrX7leVDexfM+Akmy0fa6sWJ0EInCEu6Ha5WueOXVONtp0dW
	 PKoB33x35RkUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63FEEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 15:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168891702871.5677.13811541668600262164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c6782a54deae6b72d59cf419db82849b8b2f3efdc689536bfeed95a3d1b400
Date: Sun, 09 Jul 2023 15:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688917028
