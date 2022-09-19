Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF077A2C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CCEFC433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663563653;
	bh=yIeOQXquR4RLS+NuYYTCBD65fq15MVwAafTdBgnA998=;
	h=To:Subject:From:Date:From;
	b=MZFwaNbsQpeCkZdrzrBQbw7+XMZ16My8i8k9yU4oAh6+KEWEqW+SIgHlVjCQEFO6G
	 7ZRG8Nj5pcL+2JE/hU4u3p9KidwJ/85pwgxHuJOZCGs+l76JKVutwx3igja83Aizfy
	 SBM9xJuKiPb8K7bId/LaF9nYNCqmaCsv/O1WEtbVf72WUdVThtNW36e1HpzivVGghe
	 O12mk/moPjCj1Szc0ve/XPo26oMpDXmkJqX7l82xtBZYhWRMb6jnrzsf6Nqkydu4or
	 uEXPj+UbtCTCGppJomZyNcc+2aeddMzq8weJl53ztW/ABQ+O3fd6FdJy5yMIRFOA0G
	 hQEiKJDAsuovg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C9AC54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166356365338.27838.13329096993452695788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29a73461f8a70e85589265768c83a75ea5b94c31b27469197646616adc93a0d
Date: Mon, 19 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663563653
