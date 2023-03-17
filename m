Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4172179C5
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 20:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0237C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 20:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679083326;
	bh=Z5jyZZKC27f9su3MqPpD8bKi9lPInbbCVIbs3YfEbpw=;
	h=To:Subject:From:Date:From;
	b=fp4wLm8x85SHKCrYqKVtjmCvzCJL5PlGlAXA9mtcZEFxaLaC0al+bxCMR9ns5ndmA
	 uSPrxudlVSqYx9/t9174csC4htyFVGU4NEYuJjuAipdzPe44EgAprDbUQCrEf3AVXn
	 Jws83lbSgbr+O7gJqzbNqexL3hV7mNT1pTUw+xbonfoA9yqLpnPeWSBgOmo5WF7K8k
	 DOy7y5+73U9Si1jPucym0+1WI/e/+odArVHcTghE+qhLZyx34QWh9VfCvVJMDFmI/Z
	 TFpBBrSPEmGVypmHixdPKTWu0Db5wi1DF0SMl7UVNv15LmRASnfsqjKpqObrCGlXA6
	 94eaVwATfWsZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF117C74A5B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 20:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167908332582.3192.7939036657917558681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000fe700d7698c8a0898f5bc457ebd90674d464f94b07e3ca9307936af883e32
Date: Fri, 17 Mar 2023 20:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679083325
