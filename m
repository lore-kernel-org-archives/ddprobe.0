Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840981BB46
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 20:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFED9C433C8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 20:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689796928;
	bh=9DCJqbTMFYUJFlKmimu7fSaE9hqk+YdyvT7L7Vlatig=;
	h=To:Subject:From:Date:From;
	b=BD1crrTG1NCWonmh+k/81e+bPy10KM9+V855KQYQKVj0Y4bp93HaaTLotx0nuciqY
	 RXt5S9rNT8mW5vFAltHTzdD17UbUWHZ/5g1DZN50jj/4u97WOyU9hlP8ndB0TSZZNz
	 DjXQocKAwyGBYLyw/SVrlQZSFm4ZXIMgtE2C8OXTNDtAwdOP4zzB51FZzC9QVNlltb
	 52d/A0Rs1LXERezqrj+vkC4XvMtjeXU2JBRiLvHnFlkT+wTJX672HhnnY4VG1b5per
	 ISspTPuOCOV1w8mCTwBCqkmVTtu2j0AmX8FgAtlsAJjyf8zO9CEuIOqiOqTS1EObdm
	 k9kzmYU94lfAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEBAC001DE
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 20:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168979692876.18709.8389378304656322123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ca231e6e60b79ad5fe1084198663d631a4add38681765242d6daf3ca3e3988
Date: Wed, 19 Jul 2023 20:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689796928
