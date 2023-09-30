Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683671388
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 02:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEFB3C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 02:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696042568;
	bh=/kVsJ9dsKSiA5k67LuMxs1ay1pLoRpGWe5XIDtNpXog=;
	h=To:Subject:From:Date:From;
	b=ktc4YuMAv0eKkxrcE8Z5uI2zj+5arzbu3FvXJRuaisa0VXsRCtWf4Ovh18iFeNh0T
	 To6/oBZWqkldmBBzUMEz3AH2YWAfWyFWQkJpAFLiEymKg/bXlvQmS7jBnvdc7GPwhG
	 fFqOVh/UaSqkASgLvoTgMX4h+m7bjxHp26uNKdKGmqQcek5XrCxTO6KdBL3rmkkEEF
	 1H4WF4YSSwJ1su5XofHHm5P0cyYQH++olU+xSXKAX5J2tFWfV7cfaKvlksW1SyPood
	 S3VF6aKm+M/HrpLoTNXoYfgFTxdhREh7CHpmuolOKGdpuaZ4uOjcRuTFtQVs+6LF9I
	 9Ot2ILUnBZKGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B4FE7734F
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 02:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169604256871.4038.13572296069016096746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae09b34349d0b24fb11b8a9b856eecef52fb04d1f1db3844838b9fe0e3eeaa8
Date: Sat, 30 Sep 2023 02:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696042568
