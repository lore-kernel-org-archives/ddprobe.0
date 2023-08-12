Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682951867
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 08:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F8AC433C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 08:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691828588;
	bh=rVAvkIK9cbbwq7JJ2fSDi7rdy9lcWk9U4pUdsJEy/fw=;
	h=To:Subject:From:Date:From;
	b=Qglctymrey0tToDjO/gWcL362zUQJJ4M2A9OL1cVssGoAH9h5sN7bfNwYMtZE6xob
	 eym4mcEe7o0KfOJhckp/nFenQtEU6OvlgvDTylN4xd/rQlho3CA7w1SvTYU3BfTkDo
	 LRASJ7kQF5V/t1CocdiCPreHHEFK1n2SlpQcAOPvW6zJJPxx3kwD2o2qTIUPh95A2O
	 AyPTEzeW9P6jesDT4S/kCGy1jdsY8jXcXwv74U3qRQ0sdrWZPC80T2gFNDSoYf7xpq
	 InblZxzH4VsSYuBysNMMwXnNk7jaFQ3EZ8ydUHcTVSo4B1FAe9YVtph79TJtMZha38
	 hxYIjXORcE8Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2FFEC0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 08:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169182858866.18895.17612939033163402142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa17ff2e5b05a97e6fca9f44fb6a2a28ad37548e56a84edd07d876463d5733ad
Date: Sat, 12 Aug 2023 08:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691828588
