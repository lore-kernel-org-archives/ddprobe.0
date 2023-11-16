Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B28030F84
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/9BCxsI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A76EC433C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700141896;
	bh=yM4R0B2MTIkPuOZZZwHGhco8Fg+0E2DNAszpB3aD9XE=;
	h=To:Subject:From:Date:From;
	b=S/9BCxsI7R2Jw5SoCWeny66HpDEtZ7fkbPSfvvbrQaJgg9Y1tpnGdNIA1V+lzaIAu
	 /RAqSLZRhHAph1oKTQkzwBmH2Y54uXTcWtfCvx+sCsHoJcB2Y8mSRo0Zd/ogRlh0Ew
	 a7VIEk9Tb/ZcpsoByT+96ts1gyuRchqZ9n68OZA5WOT73wDwh4BWHVcEyPSXXIa0tY
	 YJMSaF86SSaX8/KZOPxPPRnUIEY4WFHJetF3ArzzaoqKz4SDZEiLjk0F+Wk4d/dMFb
	 6VDgew0p1oylVRCvgiNDTv2hj5TvSRZnCY0chcFzvFnzn7ptOkTatk0WlvjBfwBPkB
	 UlYfNY8JRCZaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EFD9C197A0
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170014189644.30385.15528029181774364830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de594537157121f3b7bd8474896b3bbdffbbd3d70a3cdc69c88b905606f50221
Date: Thu, 16 Nov 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700141896
