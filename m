Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D131836B
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79611C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672821087;
	bh=C4+bxLQ/xyLDMefFZuOgX+lCd9ZQSO4Orm7EtYbVFnA=;
	h=To:Subject:From:Date:From;
	b=uDr9fkrbtIc6dhWIxbnZ9r0IwqjHzM/ZZPrXqzXAT4o8h85Hp3Auhe7fygMz+tszr
	 OZGZTNNXJWQSVzZBDeg2RRc+Pf2jripgN0pvdrpMKZrx/Yga9e2g1f0CXMr9nOkpBC
	 gsaeLnzO50Jmw/1oHRP23OqQGymQ1VmPlhY1l9jCEd/XiHO5xwIWw6ZyKH7owOj0YT
	 5jp3uYPjID6ADQG+IkKvGgN0670ImYyS17Z1i/QwkhniG0u0cQJrCWG1sSYPY7hDYK
	 vF//c4X9zD288ym/0qm9Tih8NgTDg6v1ch+hAZQ2758Tzo6UVoOkxpT3Bxg9MFo5Uh
	 H5M7m2ruhNAOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB7DC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167282108738.14304.2156082154996061867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f57690efbb44b87b0f0185679dd5b18a786f92d67362c9cfac61ed6ec53900b
Date: Wed, 04 Jan 2023 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672821087
