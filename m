Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3100B17F1
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 10:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F46C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 10:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674210725;
	bh=g0WXk4nNpcoONxbIB4riOh3iyTetTK5RUoHhatKnPq4=;
	h=To:Subject:From:Date:From;
	b=O59rqNmXmEnvV3miUQ+kTuMb3bEQ4W7TyPanAdfgXyWrtqD4qFcxcDcECqQJNniAH
	 QX9uh40I/i/RR67/hTOJ0x6sABBj+TqkEukBvuDEeqjiv+dWXbAiSzPE4mO2plExtV
	 Ve2mugBxK/y7hxVF8/EUmUaLfq3p8Mem5nKZASeroIfemi/K3HD19EqQ/Qwl+AsIgN
	 7GUhWUKMS0YTT/S/OHIBIkxuxB60MRcUdSqS56gVsOIlyodarlqWaxS48DOZgtoZzf
	 kJmMZiUmXgitMZ4rTFAvMroGR+xit0GZm50UZBeVDtyAPu/BrsKYrhSARRT7onol56
	 h0gUg8uC4ZUbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB135C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 10:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167421072575.29367.762546346254030429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8388d2bfa3bb674bee7b11bea861cd563477891b7cbcbb01692b83fd09a08fae
Date: Fri, 20 Jan 2023 10:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674210725
