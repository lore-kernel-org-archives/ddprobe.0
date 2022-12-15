Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04BA5692
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BC34C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671126687;
	bh=1hsY8YKsEKUNt6NTcF8uG8Kd5rVXq21HJ/9ufmXF+/U=;
	h=To:Subject:From:Date:From;
	b=ncHw14atOp5AXs6R71dfbnVArIXqrzplf7mls2Y7xqehb8gOaKo8+aTrACSsKJjcH
	 trbbk+cWJeKQz69R9bj7xra3VnRP/7laPCXbDKpEoreGTipd9Y/xPy5m+dRePTeu0I
	 qtEl6bprvL03ejV7XxPbv0Pxh55pKFNeRgwAsGnmWwyJpisWJj4whlp8dh96ACpG0X
	 SCL9EfNQPIBWlMZ31jLWzbpENrNy0Cj96pI2yRJc/vJATHsPl4G6bAzHwVPrDEhw+F
	 CrLyolz6rXmk2upNLWFu+vcuNIIZwU8cICf6T28YPs74cIf2Ilnuh6aIibaXPvnf0E
	 sKLmxU71BOMWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68A8CC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167112668742.13804.8466788679427804794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a89f86598f15cd273ce22b977a8e3540705e8f2289452d95c5e5f9ad6dac95
Date: Thu, 15 Dec 2022 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671126687
