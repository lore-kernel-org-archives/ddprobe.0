Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9094C8A
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71CA3C433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666108853;
	bh=oH44VTs1yxRI2h4AO2cGBnTEE+8QRHZ3mFXIYFr0z0M=;
	h=To:Subject:From:Date:From;
	b=KRDSQ3jth2c2nRlJnDpM7SVMKR6gr14Ff6Pf908ZTo1G/IgGRFQWyj0bAxCzvDDGt
	 u7uDf+1FOsrsbWeHikL74M5vBKoZzmP8fRVYFB3gkTbxHkOwBeICL37hRwVe/dq53d
	 V6rqlqLWYM1QyZ4bM+oxRLAhiGt+Esj7u+FFCupzGlNxea0dEsmIRXvARdTV/+bOGV
	 NFBxnT/nXQC11b9R/Nq7zTToI9lnQ7CxTiU3tbCQ7IabyZH+2wMa0/3PLtF2K/MlRx
	 FnPPPrzyIPcxTsCMRL+BdRy+wGcx8q4SJoA8C11TN+E+A3AuUuWLfxQgUgOSzOEf3A
	 q/Fyf73pr7wkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58480C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166610885335.22344.8245204068892944769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab74b556ab949ca5b1349a223234b66aefd5684896b4d80c9f7b8a08b7a1fe8
Date: Tue, 18 Oct 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666108853
