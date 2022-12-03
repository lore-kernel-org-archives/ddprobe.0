Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79D47485
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69785C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670087454;
	bh=I8SsCGAVIrDHi5bPtuP3bfiHne9EzkV7G2lHoNwyNfU=;
	h=To:Subject:From:Date:From;
	b=DcJfQH/sn4h7cJ7YJsq2eJUf8RaBFz6R0MeSSnBd+jHAnir2fR8u26OqpbsBrek25
	 izfSCYGhySrTa4Pzigfyjafx0U6zhc3Fp7xdZlrq8yV++Hh+o9g+Dxi8z6ZmIv6l12
	 oGFXhaGIcJzyvXfhWgZTsaA/Q9C44OqZAxh3Q07m0Vf1SGCyhVLwgtbNXyDaQ1GHVO
	 h8iPVib+YVkCuZ8j91PQKEYIiP6qk0pSTV3DEflbPXp8EBgQ6Ykk7eSuQislO14GiI
	 4RxeApmZPJJyMl9v/deYgtFBbFZb4kGsiMAdKxAf87MfSGzkTMM75YMMtHhkES/zRs
	 wip4BggUeMYCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F147C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167008745431.20733.5086196545060525103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ecf85f8f15442d1a6d86603d1002087b614f8f440af19361865c1ebc97262b
Date: Sat, 03 Dec 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670087454
