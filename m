Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECDC3D61
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 16:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E768FC433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 16:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678982405;
	bh=k+a1LPK3I0ik+78umupWAakGyaZtucJY0RGQG8phd+M=;
	h=To:Subject:From:Date:From;
	b=N3pHA+f6i7n4gQQ4dKjMgIf79/4XjGjvM3u1CeAwTg0EMd1mDfDFmskUBVL41k9Gf
	 kR2EiYTPzOL+OBCnuZEUhVwHO1v0TDQvnnF2bcYh45q97W3o6kb8+4265wjpSS5qL0
	 YGUaEYBMQAkm4DD9arVgZcwcrROJk4SsCpj6J8bc8sykmXJQJz1E5r08WZeUOin363
	 ZuzBuPb0vnxaac1Ph55bo52T+g+e2vVj8jCE7mg6IfzMyMi2I0EzTY1h5iXygn+nUe
	 b53H5gT6wvpHXcTM3xJC3patMabe/q21xI7UK2gv9dU/tHLedvkqKgPH9MOaAjkRCe
	 DrRMROSHbySiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1E3C6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 16:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167898240575.19325.1090855279248046324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d122c8e27afcf43d6fc036a8deb3394b07df9d0a226191522e77ee1ba1ffdac9
Date: Thu, 16 Mar 2023 16:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678982405
