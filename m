Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD1223D1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 744B4C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666961454;
	bh=PLE9fALDyDJhhBKAoR3eaz5zVWWnGsoV9jwAneWgAEU=;
	h=To:Subject:From:Date:From;
	b=D665QOkKijm7fWVHMWQBl9LZuisYKpxwVuK1l0h7ZNdOEv6W2Y0W9LJx0x7aepsa8
	 RQvyCKBEctCsCOOvnp9tf93tugZGTd6aBbQjoKnZhBA9qTDN8R6HRLEj3bDN7unSZK
	 r5B2rbeREgzAzAo1o06vlz0elP5FnQv1bP/9bia3P1F3U7S7WzjBd/+KQ27MmpVpw/
	 +r6CRKoEzf0ZT3um8a49muPs9A/zB5dCe1mfFtjK63g0+GxS6/VQopfQgmk49db9zO
	 h89Rf2LKb5fSqvDBEkny9puh7gRnsMbdPRVTfJGrWej8YmsfDXjUUSJlEztby3TP0D
	 wGl8ClIOFtfNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57C13ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166696145435.3790.10642124669410826202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 780ebd1fa2cb05d24c66f6e66ae12fe053fca1cdb7a35065339ed9d775af6a00
Date: Fri, 28 Oct 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666961454
