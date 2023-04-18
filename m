Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F432904
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 16:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F19A9C4339B
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 16:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681835946;
	bh=h2VwpFKwGlHDbTtx3+en+0nXxbUDKfWA5/MNo2ggSNI=;
	h=To:Subject:From:Date:From;
	b=eqlLZLqXg31klx/t2gAwFopcdsSXxNjHHkfzcZgeH2Nrkk+vjQdi6OrOCRk9RBVFT
	 P5r5hvFVjgMwVhNmJy00sBHl80gQRiXOIx/+t1UnNs21/wMG5BtJm3aD5OvHdDr8uw
	 /t/4KT8NJ2WaRYTk38cRk3SFlhItMFdR2JxOX+SK9TH4UQn6nglurG4i3/Y3N6Lt8y
	 25Z1YIIUfrhDVMPus32O/iZ3kPvRcx0t2Wzu9YoxPgUHVuecJwMfDo4m/bzUd4QV3C
	 ZqyOm3FARSLcAWOLiwdutLTwVZQPzwMbqeGbmFO6GH1EupCj4ZAGyuS9r58gG0C7T3
	 t+t5wH5/L19zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41E0C77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 16:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168183594578.464.6717676747033042152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90bc1e088526804bb0c8fba052f6038752f56b15082c4fa8e9b48ee1cb7a64c6
Date: Tue, 18 Apr 2023 16:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681835945
