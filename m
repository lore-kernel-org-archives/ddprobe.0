Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED4FA34
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 12:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3FEC4339B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 12:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679056865;
	bh=ZOPnt1ZnAqcgv4hdF3v8oXql9saTZnPcc4vAB6Lr9Eg=;
	h=To:Subject:From:Date:From;
	b=okNvNu1Wz1PCYqziCH9xeMz03W1Iz1tf40ar/WCeOgqG3wwAfG3u0Oor8uQO4sLtB
	 TMfv/yOOilq9SnLdiw4eF9RSXwaTV2pKmhNdAE7a60hh5PNzzXR2WzfAupVy9rGga2
	 Wvw3ppPcNyA5m7ozw9vWYs9knwOEuHDIOMKpkEIHjzHU/ZLtKyrha4Dw1BUnJ8W2ur
	 xeOGMaVjiS6DQKX1bdGYm0s5NJtSrevyTx2wTMj1waSQVLkI6OXoaeRY24UFzPDiF2
	 qOI8yKkgFvxHUSGwNt9Cbq4Fmi0XZHWAtyzMe66zd9iRoCrYycqZqcB4Qp4ks7o1LO
	 ou4X/0/uk+y0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5CCC76195
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 12:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167905686577.28966.16048604257555790795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638f12aaa86c024e120930f55696446d7ae06f111fa493f11658e7f54cd51ea5
Date: Fri, 17 Mar 2023 12:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679056865
