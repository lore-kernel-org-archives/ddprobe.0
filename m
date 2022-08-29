Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B3D5C9B
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 20:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 779F0C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 20:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661803252;
	bh=DuOrlFgmxaIHlCfjfE5QIoZzX8LpQqF0s8T5cr9XISo=;
	h=To:Subject:From:Date:From;
	b=Y7pbkTvPswEVzd6XBV/nqEit1QUUQTrZW9y5bb6hhcBMgxVtLvpiwKjDQCdcQRjQM
	 Km76dXJfTQrKnnzaoIAKPERi8Rjj7k+bSievCVXYZuhO2FiYqAkkFiBSOCzfSnaoKk
	 VOBXfhBM88RCREbXjzW9V4tIjCYRCZU19cd9eqBwbtvm0QrjwU1xut0UVypmBuJhZG
	 vhF3hUFwv15VPu1pnYVU+6wBTnfsucbg2pmMFItY5+FwH8KryiMSnoU9ko2MsDdr13
	 m/uI9Us/hjN0ngSDr/a9BPHRWj26oepHwmmCq3tFxPQKGLyHOBTlWIz22YceimblEB
	 YTxpSNnWgQT5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ABAAECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 20:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166180325236.654.8271497944274016025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acfedbf45d51ee79e4e03868abd5695e5edb2489969f58967eb080a389b56fc0
Date: Mon, 29 Aug 2022 20:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661803252
