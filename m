Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABC733D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 11:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2941C4339C
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 11:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680521766;
	bh=Dh2aje+Sh15OKcBVlMeC+sF/NwCYP8r4VJGlpGXcvl8=;
	h=To:Subject:From:Date:From;
	b=mx//zj3fdQUof/mMK7ceyDKqPEIwaHa7yTD5WsAhGa1rW7q5YoR5JioE8oN8OKXnw
	 xvaZK1PijglKV9mjwFcUoW4V5BJC3J8tVDPftTW5oWhygBzD2++Np7Gx/efVauPm6h
	 KS6KuIM4S+Lz0lLX2xeuxra17A9jQw/znXbW54qSVfKnjzgFXnVgAPIeHpHoJvDe52
	 QJ0pcvvrulFBpOhD10y+XzHzBSVA2tFmg12P5P9qlwePPtOrrwkqCOe/FpAZgnx0KT
	 Ob3iS3cZ4sjqC0qHnC1rE8qEu8OPt2WXtbF/8hST4wD+11VcjK/8Z8hWbXh637c+y4
	 s6WirXciip/CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75FBC761A6
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 11:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168052176580.17344.8084085215528609126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca26290bc3dd9abdbc7e9debf4cdcd988041eb514af3ebad2500257e72f0ce9e
Date: Mon, 03 Apr 2023 11:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680521765
