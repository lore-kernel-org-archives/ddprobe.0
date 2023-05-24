Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A6218C0E
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 14:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D375FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 14:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684940105;
	bh=4vbdvf1N8GiStXHZgk+aZR+9XnXLZMpMlVU1P/LMsHE=;
	h=To:Subject:From:Date:From;
	b=t7QTsjQ6tEAWeaHdjqGXso8nW+2BLewP35zBffF9jLvnhGqTrS+/lRfMQmJmRY2kj
	 wK8187KzVAEvoD/isPAYQlj0mnv6L1YfTOOmP6mHZvTh6nAxBKqlg996mSuGS1Trfg
	 +SFVyNueLlKfcg0x6AyDdY2jFIUw6IB0D5sMg4FJooR1Gvsy/fuXQbl9OZUIGUvVzS
	 gamgdz9kF42sVGRx7dqx+RA8Efr58PhvZsL7AbLLJPChijf91gF7kvji7Y/LZJV3eN
	 QbFW2DSCf/VcyWWVTvP3RSUB0hH1VIBWbn7LV9hFlGnA1WtpP8rcaauaLzhTU08vp3
	 7+XyTIKRpAxbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D04C7EE23
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 14:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168494010573.6185.15724124185430475929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0d7e7f89620eb5b6aee13afe630986308ceb2b5a18acb201db1c4c0580e368
Date: Wed, 24 May 2023 14:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684940105
