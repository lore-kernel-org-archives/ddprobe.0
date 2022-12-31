Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8E83C30
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CAFCC433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672525887;
	bh=Qf+018Ye1H1Re/VT2hq50yO5fCH8TNmna4L6J9jf+wk=;
	h=To:Subject:From:Date:From;
	b=AW3yVjSnTPvrIdIDx3vGfi/CTQCUBdvJodHxUtnJFBaNM/lajlUUFAOgulJcXTKIP
	 OwOsuPrPNyggOAqF9r+Ph0Gg8xtOeLwmTUEg0GCtr/wGyfJzXxRVN6dAmIiB9EdZkX
	 dZG7u8yqpukY7MCL2Cgc47NR5uv2hfLWVB3c+P/gIsgowjOwRW3AA8R3LmerUMhzGD
	 n/ndta+6zefkIZU3wYHM6VH82irnLrT1uz1PEIVrCRPSGCg7PZ+mXLGErsoOZdobyG
	 TKg17haMi1lqHOdUy9xHVq/TjD3je7i43idng/523DSHpGauOFTSdYXABCWjhQlie7
	 ef6pkw6ds71Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FB76C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167252588744.4428.6844731663350462103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7cdbaa8f89ff9c59e4d69c530c1c5965a7c93fa841eac11b3228e3ac6a05e8c
Date: Sat, 31 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672525887
