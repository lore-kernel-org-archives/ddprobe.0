Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4B96AA9
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMlGRMVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AB4AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698726496;
	bh=XHJt241zYiRTwGE2OMCV7H7STDxo6t5MVXZubd8bBdw=;
	h=To:Subject:From:Date:From;
	b=NMlGRMVljQmNeKR8/6/jeU24pEma4+l286YlhjZg4E8ZBtFG6shCqU8TyDiZOzruh
	 zaNvxN9TlOzmGaahlE5YVklmj7uJ8jflLhr1Yltiv4z2xX20DVFm89tQSMW9ijSJby
	 JKfRMJI3VKVMSk73AHkG0Rp6nMoq0o3AL+ISzuFZ8xHlfpl5ZUoR+uz4dnPvUelzUT
	 ev74XlibYuGhXbn/rlGRQr/ZyaCKAHFT9ByY/0SKU5uYXNNMJngc3/6EG9v3PEaHP6
	 bZrqPw8U+vxNsF2ocPtqDul5X6TFzW4vLdvpXRRUUPX4DTiC20V7oKMv1iFG3OVXM3
	 RzTBWlsB//54A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B353C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169872649642.3752.1278490576020485647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdcf0fe512278fa7be5c781b7559c806260b239d633578278c354382e707c16c
Date: Tue, 31 Oct 2023 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698726496
