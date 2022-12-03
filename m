Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB39510F2
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D1DEC433D7
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670025654;
	bh=V3uQGJO73uHl8NYnIyN/FhnsEEweFU/BXI/fV/dLjMk=;
	h=To:Subject:From:Date:From;
	b=m0AoLstFwEiQMgBa+avbeb0a/thbLyLLKS2gIsnS/ToV5rZh//nYkbC2gzziMgf6U
	 PmLl8dyW2gVdYWaI0AaGQXxkO1MlbzA72qckX3Yu/l3Vry09NnPcKehPLQ5TrBNEC0
	 4Red5hc3YOQ4m36wFXU3FSjRKIJuRMopx+y2QALgbnC4NYN3cNT4fbocJbvIlEmonh
	 VgR7aUAiPKcnHve6RgNr9K5V+3cRWudOabAQRkBtMSMoW6UGDL+qHT2jtyosXvAozf
	 qneTMmCquaBa8gjP+vx2iRxTd9qZpdp1Ia2oEl4VFV/6NOWw+ChxDvzYqpfnzbp9rm
	 okJFra46d1TjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB5FC4321E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167002565436.15365.14254315992244636192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c3e47338368e72f0380ac21a0956fc25e6c4c4392749e96d58cdbd60bb67a8
Date: Sat, 03 Dec 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670025654
