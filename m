Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C248F7E
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D722C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662423653;
	bh=BsjqDgvVH8sFbnaR4c0bNFvGGwaStGQvaACzE2IjWhQ=;
	h=To:Subject:From:Date:From;
	b=DF4Ckbk3bnYgAR9AmH4AHD/W4+FYyTXBuS0YVSiQnzuB5it00IXZUES46iCUfX4VW
	 hBHmt4ErVLZuYz/xLCffeznWhN7sOSmDaqo4hR5uOFDXorWtoHmMDfRI/8SSDKgHTX
	 2R/+vV+GMBHJasXnS84iBh5CCM1zbTBaJWWvWqwyeOoRnVAv7plOmx/8HZOJ2+LpfE
	 qNNIuJtAkYqf6Vk7nSKa5PLHdB4cLYGuX09vFdKG3rVUXQBLwjLQbN4Faj9xhHvqCM
	 T0NyakUIBLUHtfy/ApEiCcpPjJkOKMHkk1kBcKc1N/VnYMeOUkK5tkbB87n+o81gOk
	 V0xf5hSl1LZTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529C1ECAAD3
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166242365333.29941.5042250209878434787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a57dce45d0de26a1a470c6a3ea495c6e1eddae6803d7a4d1dc34a0cca0c8c9d
Date: Tue, 06 Sep 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662423653
