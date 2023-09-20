Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB403C692
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 15:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5D8C433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 15:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695224708;
	bh=rJHmhrEJVsKqyiHY8T5Rc63Thg1inGglfP7knsY+aqQ=;
	h=To:Subject:From:Date:From;
	b=JypWUYY097XlBiMGd6wTq7gh21hbs+rL7jgff2a3u7LUztTuvV+gVX28ilbvJKFmz
	 mbQ3PGM3JJ2BctUJKUZd5EXwRIu84dtw3aqy1m8PfOhYss8lZpJuwU+ebvECet3Hho
	 ued2lxEIlLu/z2VigPDQVdaEitf2w20OK82Ftc706DthGv8YZdINhrmnXSzBKqvtLL
	 SLkCbF2H7K2Syj6kehPFWPhwnEQUFFDeei8YD05Mzett+DsTSURY9N5F4aM0g8gbgs
	 stu99gTLpZ2ks+Xj8hmUmnZn6cJGPFjP6tXlR6oKLfJPGauKMhW5aNvlyPLYzzLutu
	 GAt4uyT5/4Xog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C4BC04AA7
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 15:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169522470866.14647.14332211820110660324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f8375d70c6c7dda3028a0616c309dbf0f37690ba8b281537e78a49aec8bb68
Date: Wed, 20 Sep 2023 15:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695224708
