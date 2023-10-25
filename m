Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254C215AE5
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPNdmOoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93C85C433C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698246496;
	bh=xesMk3zzFXu+LF+dE+zbvOVga4/q81Y352O6acUFASM=;
	h=To:Subject:From:Date:From;
	b=pPNdmOohz00MSQs9IlwwLwZLrtUegDx7Kbq5NSN8bP2NmkgQhr/z/ufZKUDOn5foe
	 XRVcTr+Y9o+gim2dbMJ5aj9iIQLATf9smXjknntz0fnohIx68i0JUdFTQcuvIQt1tX
	 X816dslzBIP59ww3K0O1vIzCI0EvVmC2LNxuQTPW9xf2z3oNtvSlMiLsLhiYDFhrtl
	 WvN8zswlqNT87CZfcXRwLxC7oYWOwfh5/6m15zy5Eozm4cVRNtbIse2889JpGtIBW6
	 4cf5vTSNqvYDArzBHaR4FSztFncJz2W6cuGg9ydTk6a984IAD1zy57ZssdkgRVYfbL
	 wqUZeeSPB7UjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 753BCC07545
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169824649646.18243.10958859147153214044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 749870623fd2637652da927994fef86289930c8f31b059869509b78c4bf95ada
Date: Wed, 25 Oct 2023 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698246496
