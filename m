Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5AE7B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE978C433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673901687;
	bh=8aMR+HsnMAMh6yGzwnNH/mA+rBnvsJzKJlksWqdgbGM=;
	h=To:Subject:From:Date:From;
	b=m7vOwbECs2lpWAWxVR3h2jjZmsAHZaCpnM3lgGCuRkNG1Y2L/mvuuiYQvj0PgFYPR
	 jVs2pcqhI+u57+uEf8/cTf2c3Kxsr1BraqxLr4+tzxmGEbtOPfhHdiOW/I4oTKX0L1
	 q7KzXjBlM3VVpWW9PthOtx5mNZ6OWw3t//Bufewwk9iEriy7JC6uHpw4Gq/EUCO865
	 w+SijD5XqU/uFrnTG7ytGaaNmRUanwolifbumVEfpBgJYvKANHUjulr1h5mHKKR2j9
	 9KdLNK1Y9foeOtd2vEItrV31k8arUhz39BhlurzZ450z/LvraawOAvDLb702MpQhtQ
	 AbdkiuCtmrOsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB48C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167390168760.29685.10781498851313268257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5e9958c11a1e2db1c2545cfd4328679fd573109905a1d0b8419b27cae96bb27
Date: Mon, 16 Jan 2023 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673901687
