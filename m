Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79E56ABD
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87353C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671915687;
	bh=Pw/f7CV2XnkeM2NPX23yeFUlEBpR1YCY8CXLh4RCTOg=;
	h=To:Subject:From:Date:From;
	b=qaMd+3ejumiUuF/exK7VFCH8IVsIYyamJsoyussJ0/Rl+82OBB9XUGaU767kN/FOU
	 onIlM/NtgSQKemmBkDSvyFinXtJIGljkdhZE54ZMqQeIzkDqNcdRH8WqIPkZ5LecOy
	 6DIRRxsCwNfq56SFtmbpzKBzoa6n7/rdjM7QZpVk6RgNHT7dRmR0mkzV5pFDWB00AT
	 BWCsiV+rzLwYLAvTh1vYzbSNuBK2oLqlwGbcC5VTVqmqpWiQOZelO/D3AG3l+CZxiM
	 egawfy6tGOZIqgv6Fj9EEs2f5Wiwfb4cdzgPPl2glB3uocfCwl1Re2zEgmg9bmClmg
	 TLpgTuZmNgLxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BC52C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167191568741.21360.14001101275581678349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3164dcc245a6a01d94ab1bf17fdb1234aed15e2ec8945f6af1a75d9bea9328
Date: Sat, 24 Dec 2022 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671915687
