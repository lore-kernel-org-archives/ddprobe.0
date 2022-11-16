Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A4D7C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB79C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668567054;
	bh=2ddi7yVvff6kEoEZQsmwcQCL1Xr/YRokA8TXIDZjeB4=;
	h=To:Subject:From:Date:From;
	b=DVrfdubj0S6apL0dlNsN05IVfq2ZG8QVFBRGcg5ypnivwoV7F9hF0T6SXSXaX56ea
	 WM7BUzoyJMXETZ014qXAzKJslvwvyk0u793hWcLfxcQnrJACi/dNWLE3F/NiG2lB+8
	 JSMQ0by+PHiStFLl+zHP9i4nSXfs2tjJwJw7Owt+IP2OyDgVfzzT1Qz6t2vFHCDNta
	 Mi6kxwfqAAQkPRD7cq3UN/CI3W/CVtYD5Bej/incU7lnn9z88KPI+pfhxneZLfv6Is
	 1c+srcJ9C3Ql3gH6ojUmfJgHBkdviIuTaMu4ujaBSW7+k2KeU5o1t5vQCzCE7Uq9Vd
	 vHkME9KN4xASw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64608C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166856705440.9816.6612324261466792267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be57032ff50b675d6625f04338846915ebe95d912e0b3874846973758e4f1079
Date: Wed, 16 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668567054
