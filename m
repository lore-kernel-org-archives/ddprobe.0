Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1CE87F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72342C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668581454;
	bh=px9QIaNKSzy5VmqcLrVNH5SPILzgZd+q6EHWZhwEKCM=;
	h=To:Subject:From:Date:From;
	b=d5mz87m05bhtHc4HnTSPvdH+i7et7qu8lM5sCW0aG5wpJUKXK5Xdw4J2genf7UhJC
	 OHQZ7bG6ehaqjNL7feIz09gPGY2qhsRn+1a951F/UkPeOw9aoe2PG4R5npmp953wlx
	 HMrBS+4rKwZIVe6lakRyoWEsjcXNOy6QWNjyY6YDMLJJP8W+cDwFTQ95xakkQ6Svzx
	 FxgXQmammVyAss5RGcp0pJ5cui8Zrbz7KuaaTvRi0iWh6tsF136wjiiKkPaIedHU+x
	 dIlybcxLkmSpfrSqy9UNJHdyHeevPrXIkWXC08SqOB8XJav8ywta5Nl6lA4Oim4Gi3
	 QdXuNcL32eXUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56394C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166858145434.16109.2972701907101247642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca4f08567d2ac5ffc5986c548b0bfff1ecf1ecaa039eeb59d71c3ece105f9fa2
Date: Wed, 16 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668581454
