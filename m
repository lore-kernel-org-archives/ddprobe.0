Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E22A125BC
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 15:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E673AC433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 15:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693494848;
	bh=Ryr2+OCEdrKRm+slGdRD51xKXDwpkDigSnNL9o903yQ=;
	h=To:Subject:From:Date:From;
	b=iKULX+wpD+famOjQK3NYo3v4qNtrG6JizTjUJS0U+ufYJBtakFEo06uKUa7dKVbpT
	 vqnkmDsWxkBYYc+uKKy3Ju2Z6WgT1NuLIQgF1uj0u1KP6rWnZAmkzYeOFLZuN+45V6
	 4eqicrfKUZIoqFFzah4Utk7dTLc5MpXiy/kVQMkrveRqhkDO9RkbjMtGRLCxdgPdVo
	 mFgLq7rYQHnuccItDrfvnkyUE/0L9pecOZugKquf6CARIo8ZdvLorlVYcNhS7B7g1n
	 JySYC8rcSlcWOX1qkqaTf8+8rUqcjCJRlGeZ8NeQZYhZdeL85YbMpchgYz2lEK9Cqa
	 6PNQMmiwlPgEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14EEC83F2E
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 15:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169349484878.7404.11088730476617401442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6a76e6ee416924c12eb9c75746af927d1650eb70bdda7787958ab813dcb15b
Date: Thu, 31 Aug 2023 15:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693494848
