Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493BB2564
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 07:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E12A3C433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 07:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681887845;
	bh=R0pHmpobOuUDeif6jc/OsDjf4zRBUtoQzo6he4NPRCA=;
	h=To:Subject:From:Date:From;
	b=IlukD3rPvVzsWmhVYYam9AWO4Uk6iX2tTavWqg6rUY/KqSilAdtkdlhe+dS+Qx6If
	 dRSa7tEYI7pcix37ORWHa3mZ1Ykpd6zhMGrGc4GE7kMrIetRudGUBg5pGOe62LAP3q
	 pKbJeOCUJU/vWIRjhXQD9U27VZYBUEWyCmNu5114lPSMorzCaJJtrzgN8ip6eNMEuK
	 7w/OOimWU9C52YQKzGP/Su1hzcSCGO5bc4NWj56u4pktrbQlPnF1BT23F4Xb4fLxSs
	 +EgvYJ8ZCZiAXABKyFsasR+vrWSg5DCylC/A8pmQ/8gB1goky1UZS44ZrMm7JMuNOx
	 z58BzyKgx4+bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CB1C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 07:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168188784579.27266.2273023420660063800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd48bf19286c56a5d76d2a08527768be4b35879b0aedb21be732af0bfb99accd
Date: Wed, 19 Apr 2023 07:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681887845
