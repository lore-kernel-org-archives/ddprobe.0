Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D33D12B79
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 12:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7ADC433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 12:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686055325;
	bh=2NxH6VfVEouo5UnGtwd/9SdV5QVPRWzM3YccAHGS4qI=;
	h=To:Subject:From:Date:From;
	b=tYuy/3RV6uTLy6cYCmegvsSGVTbYI9MgL3urHldboO6MaVVXUGRxBTAbjst5u6R+4
	 KLD/309oQ0He9YwCxj/PTBSWTtlOSPvJqbuyZbpQB6VkfGA+RhVXSaifrDbROtPV5w
	 zzso8NGKvocQ/vTS4b2Oyr3ahNB1UUHhCIjvumTEvlTt/nBn334DrsCS+IeKiM3ivT
	 54hkNTer8xenMMTDUiicKOox1hJxhciQq8qikP7RGrZvOeCbb1hXT1zJFNs8W5Kdu9
	 3+OCnlkrLu4kqc43aZ8D7xFT8AzicOgacrKt4FlOs70H+gcBJ1AtstAdvKEQPz5Ha9
	 jEtPvMaaPhM/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B11C7EE29
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 12:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168605532579.29313.10871770271671270134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad062400a0e56626fd86bd10ae125aed77e2cfa7a2c3392516860aacd2421562
Date: Tue, 06 Jun 2023 12:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686055325
