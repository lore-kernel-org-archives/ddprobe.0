Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9D114F69
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 17:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF870C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 17:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695837368;
	bh=8a14V+ggVokGPPOoMGUrQ7pgSaqLJpDT1CzlWW9dxz8=;
	h=To:Subject:From:Date:From;
	b=bE71wgJZPUDUWFg3VCy5r4amSU0HZPPvPQCknmEH2ez979iBwO5kvc265BzCrutus
	 OGYsxaeRnD3qE9Dhywdc5svsaj5S/D8F9I4/xK7q7miNOLdZdCOMl/doy11oZNYOSF
	 gTx+PwF7uQjbJ8mPIP70ospPjI41GitbZPK8M6o2gsg2fjK+rvnQc3bEr07MXmP44R
	 Ggq6YH4doIiqPFXKvyD41ne38pt3Gl60Qeoyub1ZVIaDCinnxGZ9CXOH9yAOAB5c8L
	 /858S47Y3jfhdeE1G9cGSj6ZcMM//mUFkh4gNQ3CK3SBdLQlP8/J/7KbCxsU3iAyOH
	 75oT9dSxN75Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D23E82CA1
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 17:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169583736867.17541.16707868552393763561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edbc18ef1d86a8db0bc1e0e0da19fa19e5009db352c5dcbebda8691e3b4770d9
Date: Wed, 27 Sep 2023 17:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695837368
