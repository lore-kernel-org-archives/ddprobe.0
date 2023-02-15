Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CE77C
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 03:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EB23C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 03:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676431026;
	bh=4UYpfWZLIj5KpHQfUNYExaS601vfRdlPu3N/xF6ZTd0=;
	h=To:Subject:From:Date:From;
	b=K/xrTeLUX5jIXcaSbiTPqmI5E0ylaNrWngKebF7shYTE6tqwwHRvqlODBIcKYfKLH
	 BJ95t43vzeAxBh/hq/ROYRVebwAMZbzyNaM8/k8QDPRCtwCbNowwWDtJJuFs8KqXpj
	 714fCcby6Ox9iOFLe7AOIHfW6e/7NWprLI8IAykc0I5acjgs/w5BVn/zFvjbpnEipY
	 drePqvMmx3KYzfOio5Kk1QMl9k6QIJDzI8ujUH1ftpS3jejXCYItOeHSCdMti2+70S
	 k90fqdg9J+il8ML6Cl8nFmte7ZfruHsDvjldmMWpfg367r+eJot2to3tWoRMUhhBWD
	 +COzGZXiKnUsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5111C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 03:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167643102592.8650.1537727520401783355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f315180d825090455be232bc3c1916bbe8ff33623033ddc4932702d042ed248b
Date: Wed, 15 Feb 2023 03:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676431025
