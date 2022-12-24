Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC61D17F4
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EE8CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671892287;
	bh=raiEluRXl/It1hQ2LWh0z1VUpby1oq0ej42HzO3R7N0=;
	h=To:Subject:From:Date:From;
	b=pSjLFicb8ktpA46C9KADotDqIP29vyNa/lOPFvihSsV2S8yj/dIP+FDepLSRfRXA3
	 GeZ4VKdYnTnQJgS/ZAdD8Kyzyp17+87vbDv4EsvV2R3T6YVqOm6P6i2f7UW9KkLDKa
	 B9E61zGNbj8t5joItp6H9DbXldCYkQCgPFz8O88e+taX1OH4J9mpyiZauHdwYBWu4Q
	 4oYrAbKoBpIEBCnYfSf0Srhq2WeMs4L7vWv3cC/QzHNTw7Vc9Yqf5mTXrWN581h2EJ
	 KWb7oQI7cJaJAAsiioXFK9Rs7bXZG+L+zCJLNHR2mlNCWfkIjpjntgmHRBBhHC8mku
	 bPrFC0vnJOMqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 622FEC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167189228739.16054.4351362880589322850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14cc1a0fee2031645bb64a476b67db40423828b7994684f898cae6b32d9e6c8
Date: Sat, 24 Dec 2022 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671892287
