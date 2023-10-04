Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6132110780
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 22:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuxdFAG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0D5C433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 22:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696459568;
	bh=kRwjAQw9emAsxA9lUpCW2LIoprVSSmIl0Zab0/IZB/4=;
	h=To:Subject:From:Date:From;
	b=CuxdFAG9ca+Z+775i87RV2NqjSA4Slg7DttWla9CHKudoKFA9PCflSRg5cfwP+G2s
	 0+3Mu3IS3Xjv9z8fyPU8KvxQk8XBShy0qPjVrT0Iy5TBiVjfc6QqoobUTj5swjV5Ph
	 a0G4czJ4fzTdrzn2fCUomZwwUBIPtrh7WsBjlD0ylNE7PqYBcc6VsDbN2pKvOipVHP
	 nsT3BnJgeGLZ8dSlrD6B0m3DgrxzaG+5ppD7OafuvIZZwrP72Y48lV0UbRhGDxiXoF
	 XLWXrewAiWUeB3laNNa+QoXXJwtieFEPmMhc5UTO8JkMgZbqeStJzjGkdINKi6DJ5G
	 lcfaNKtr3xRVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F7BE936EC
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 22:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169645956873.24058.399727048253212274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e459a14c5b5efc84eaa4885f17add7df01b2b6078ca76f237ea30c0ac678fa
Date: Wed, 04 Oct 2023 22:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696459568
