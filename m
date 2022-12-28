Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E226D24
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 927E2C433F0
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672257087;
	bh=y2/5czTUmh6xs8lSHFUO3eP4vyIzeMxYbLQQPg4cUjw=;
	h=To:Subject:From:Date:From;
	b=ThRjR+0qA9/y6fRi8uY1I2S8VgQCU/n7kko8/tYVjXehi0QqwJWGHFCrqjzEMSAYF
	 vJWhmQ8gHVS26VTnTAHd+iKDp6hVUYYTrEk2g0Ulz2H5/nBA+HeU6XYzXGU3umlwDk
	 q2RPFzAEH646hGf0TSG8qrkeL2y15DzrOMqhQHCOUifat7gJztfGPBE9W8dTtSekKH
	 Nn/aHHRLmUX7g/iNVpaMcLYh+sQ2vBOiWYeOGVnDRxQ4W3S+UoarFRDRfv+iD3dUct
	 9DbwNZzDBYOfMfcE6G+n003KBPO3pLudwsnR8a40moeTwCd3gZBTj8eS7RV6g/94Uw
	 Ev3QmtMeolDsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77523C3DA7A
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167225708747.10188.5632041816056701655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5732a3e5ce099c5988b74309a363baa4b9bdb842b8daecfcef67d29e0020f71b
Date: Wed, 28 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672257087
