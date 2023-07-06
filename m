Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391A81102
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 06:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3947C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 06:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688626028;
	bh=5JYm0nX82v6Mq3VMVI2AWf3LPpVUqAHDCz9lgr+L5ZY=;
	h=To:Subject:From:Date:From;
	b=mNI96GJ7T4r49WoZAYO6joTzGMJ55MQYMLts4I2TvvjzxtSTxpodOK0Fa2xaeNIOh
	 BC6PJPlqNpbONjtPRF0jiLK/cplRKkLbTJPQ5XvX38U9M7peKGMGgWGOZv/kPUpy+4
	 mQf8NUeR+SOscgVfI9W4y6ONVEiLh6ReZtlsLaCdY7eMAUzKGfiZanchSERc6kPx0s
	 D3ee2FfoE5ttvTawtphXATpwARtuBsB24HcTmUDYdtCJ0B+yFNCupJc+7yKVL002iT
	 sfHK+jfxjlfoxKAP7PfJbm+qaDlB9RvlpeZ89/iKMm9ebuySPQ435aFCptkTxa5tbm
	 6M5b0nmpXOgNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABD4EB64DC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 06:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168862602869.8126.16700326621364342480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f92736a73e2decce0e89d994334feabb916f4736e11cc5f7809a56166e07d4
Date: Thu, 06 Jul 2023 06:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688626028
