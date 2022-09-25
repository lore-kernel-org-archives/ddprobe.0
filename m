Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33DF7E
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D38C433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664088053;
	bh=bfd8jQzBqu75GNALkLVUVeHtPra6NMWglfLe7GIjL2c=;
	h=To:Subject:From:Date:From;
	b=NWkocex+ywz4MhgddSHO71yKmmzsM5Fq0tNg4mBkMMKWyHTcTyXqYlIYGjCjYK8b1
	 4cZMkyzjfY0HJBM1GGHE+Aq8eeBqaVZVRVSbrhAVdn4dorBn6FgZk04O3Fx9Kzg8h0
	 02y7e2QV2a8ZiZQNUm5oa/SKZgVmw9G8hWCAXddmrMG7hEkW3R2FMWf3AfNLZKDWxE
	 vCOqbHGACFqlT8w9W/yGvyvRVyX6YoIj4L4CjYk1S8aJnVyEg55k+gQDNREtR1m6wq
	 +oD/T5vzRX4+sxSbKlrK9Zsyf9Rs7ayJSLPYss9fh5ggJIyfFNFuXAeZ6UM/ZR3BEF
	 rdKmyfRHz4fFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 590D0C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166408805332.15335.8320477329210386211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c670810af1aebb718a07e94c4855ba4923e1ed47a1be4173b1bc04ef9ba6cd
Date: Sun, 25 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664088053
