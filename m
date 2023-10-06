Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B94125B3
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 09:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kotzeNT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B25C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 09:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696586228;
	bh=WKGjEpQCL7gSr1xiI5T9hVdyW861IL6FBPMFGC9NFmE=;
	h=To:Subject:From:Date:From;
	b=kotzeNT5LEbo4FSvhG/LpFxcHT8wu3npsuNXRxN0yBnh6Ohpztmkzx27QY/jNHevL
	 q+twIeENm8qzdJccdol9nf6bZqs1DzGRjQoQHNWRA6jcZUqcZdUqslLDIdA63jkwZS
	 df/ZW3KrRatmSTxYq39C8Ace499h/CQMAFLxH5OtdyVOhYyjhscvBV0zuiR4GKzS0E
	 KrPx88+6F+zMOAqSQ03Tz9Ffzqbgd+Iyc+9pnmThceQ/+pnO+58ti8hsZDPt8b56cy
	 iAV2oQLvgBqNkO0YoX/7jXXO8nXLM/vJQr+HVM/sHPsInj6U8cY6cNh0spQnjgd0Q3
	 DVb1AhOtvub5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C7CE92FFA
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 09:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169658622868.3073.3415647925708510144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83dafe672bc5cedd65c805db71edfad5fe4bc858e429ad0d6e1118157a812e44
Date: Fri, 06 Oct 2023 09:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696586228
