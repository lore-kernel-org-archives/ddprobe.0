Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BBD8821
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 20:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2184C433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 20:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682626925;
	bh=icePomiKhAH64y3f8b4GGesbxmh6n90d6GJoa1uurv0=;
	h=To:Subject:From:Date:From;
	b=rBFp+jnHEQMu1vFWSzwXeeQ2In/9M3HKKeKYbWvCu2FBCguOJcJy2JKK7qx1RnHFt
	 D5vw9ro90PLIb/4w8B0eY1Gc1xdP1xgT8W4NX30WcZBorGe12D3L6TdTBnFJr7Kjk/
	 eFDNTEzkmlUoI0dubvhMnCpufpTyTpptxWHBXDqmwpWjPygOrpDmctSfSapMRKY538
	 xPoPyu0IHxj//CS+zX1IdkYGqidKQ9eQI/yKazybezPyhQ5/0htSYnvwWEz+dfF9Px
	 +3M67Nfj+Nb8bUIxtt/WHTQpx6LpTacKPyJev1IN6YQ+OqFf74zGehOJ3bRQxzQ5wA
	 yRsGBdt3RZ1Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6584C77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 20:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168262692580.21789.11923442607503804757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff675b082ed3ed236f8214095880e41dc585118c2e78fe66f27eb18f321ad1b
Date: Thu, 27 Apr 2023 20:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682626925
