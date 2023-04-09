Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3B91FDE
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 23:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F03B5C433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 23:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681081866;
	bh=xmR79ET5hR5bbArz0p/ogReXmcDKyBtRhXo+pB5rq80=;
	h=To:Subject:From:Date:From;
	b=UD1a9hI3NaPlLOftjBSz3Iq4TOtxfA83acWK5YAuZc9JJDu1dxqIQ36lsOeTUmbU1
	 N0f7yPswyyCFjD83NV6dgcIqNqnH9g7MKSI+6QbjBfRS6+uSEywfdTudxXOE+KIO9q
	 fzeHgY47YMhARq61ba73lBO7RDL0oWWiCD/vnIbUkFPhqal1LnGV7ecCkOb83Owooh
	 Lnb+wVeWtg6OJYsrjeGpodnVUPjJonEMXsPo34MDFPrW1FZOT03jrce5DgINDeTGOj
	 QBTrRkxCOMbippowyE2rkCoNI/c+New/GC2BoKoH3KR+0TNXMagQj2+gBksAaFmsyP
	 T5LfT5FZXw9Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD1DCC77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 23:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168108186577.11647.11999934149939096872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adabf7cfbc02a64af1b68fb6360f5d552a4822ace58bf1bdeeb33ba1fb87bcc1
Date: Sun, 09 Apr 2023 23:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681081865
