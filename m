Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BD6A47
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EEE8C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673123487;
	bh=Pld10dMbhUrcL30XvThJYiSGh86+AKjfcuGca3M2aTU=;
	h=To:Subject:From:Date:From;
	b=iWrFkGShJYtIlPjygl2UOmUUCtXIYaBwyYajVlTSCT56CGjLNBOINnSc3liiDCGkT
	 FXm669dxXfvL09gXvG4hp/vvvYLjQB2iJsfWv5UySmj8byUOyRJTzUeCvnF9BnOOf+
	 QPT4ncSX2z7Yq487kQhHyCmqfdGtfdPicOCtrr0ZNHHIwrosnaPXM2kcrCcIzl5EXy
	 D06od5kjXw3hGkXspdQmggP7jWo0LSl5gCxeP20JIl1+27nq3Tj4vJZHskAgdQ+2/h
	 sRAGCOHl+fgXcF1RHkuAgcEBRSrPm16CJsEa4fnUNFR6a8inOCaAl4xZNfscOAV//M
	 OepLjqDQ1CL8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65293C54EBC
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167312348740.15942.9521947786529311580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160cb2cbc683e5376d735b141ddd877828fae5ea61aa9a116dc40cfedd15701d
Date: Sat, 07 Jan 2023 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673123487
