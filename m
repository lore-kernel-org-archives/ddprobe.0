Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8407E4
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76764C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662777053;
	bh=fJlvZrNcpgujufCz9/9Yu5jySAL+9037ZEHH1ovjuZ4=;
	h=To:Subject:From:Date:From;
	b=DCn4eqarOltWUsNckjXZk+0V4g3u6xiyuD8pwlvo2V9e5ZUpMeIpLYAVIU9pwpJt0
	 t/iOCPA/m+lc4ocuPDqQGqgH1ZiaNJ5Cah6C5bnPlFxIwEQwWdqbPMBGip2+NGt484
	 pNwcOM55CCT3BjoAzqKHiwn5n4fUcaISgJWbM/2OoDVrXg+gMlxGLY77/YpFG7U832
	 g7icCq6HrP78JJg547ul+thPCt+Y3RW2c/yNSq/BLAICZ3TnaZh4BPgy3a0Rf9IACV
	 7ivQhxdKt65BBRRFQH/mY+Pfskz34isCE1aAR53b2cY3xenSlwEVCxBOTjWb5JvFmY
	 nRqSjMK8o+Njw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A2E9ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166277705333.25174.16238705921538295831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d337610cf43ba89cf9514ed58adfbc18f135b176cc36b5240ff66d37909e19
Date: Sat, 10 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662777053
