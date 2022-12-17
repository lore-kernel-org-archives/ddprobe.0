Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA50E36F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87544C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671267687;
	bh=Zpk6WECUnjw/masPfkRvnXkeJ/d/G5FucfSKkeheRnE=;
	h=To:Subject:From:Date:From;
	b=aXwXi5Zr3yeZpYfpWiPo1UMmF2kRUY2ZZRifvASG/tpliwk1HHW+pSs9J46aC1iR2
	 vBPKtM44b86C95Gj3Pa+FJI3GaTHvC34I/uxjn4kIg8s4mb0FENF2AwEo4zntSmalu
	 8/ATXoXhuFsb7Kto1zYI08T3Q5j7pBsUMQmmOsz+w0FPj0C0CCoV8spGQS5TLiD45k
	 V1bY82YDREf7ajCQc5tXkadfufwpJDn9nDACbgUwfjvzil+jPK5Gsu2tvrxoyjrIM+
	 4LZql7pbKn2kydmKIWeODnlcdaWOUBMgubbSJluZFkL9GXSCrrwsq06OYA1Gcr1DvY
	 QU4k6J2BQ92bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6935FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167126768742.12530.5455561353072836122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136ab026acb855d7b34f23fc40e48bf55659901215c3a59e53848f59519d6681
Date: Sat, 17 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671267687
