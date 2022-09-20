Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D0210EB
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 694F6C433D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663651253;
	bh=s9Z6fmngdb/b+xWKfg6C7igty8VJXhUCYYuKNqyyTMg=;
	h=To:Subject:From:Date:From;
	b=NX+G/EkJqSesoIxbzGArpiYTi5Q4Pe7rXfAz2m8Wa9BK03iSzKBSp17L7u7IitUL+
	 nQe6qZO+5u/LBMRbuhmUzP9mLI601UETDSb6mmVoJpL6CjXNCy4XMjJstdU2dMYau0
	 QHdlur+vl0u0MmBK46mc7ac+7rGMnw61nkn+GvedDAyvYoNr/tNLegbbKrJe+uGqzb
	 WUMN6DLq9EtUd1eXqh2nuBj9O1shKKXWl8pFCPwljgnTVTKzNAf/wPnvJtfuFGiMJ3
	 6ukil4RKVtc4bmDQgW+cypQm0QU/HohjdfET+RdqgSi9PLh9GRAVIKYElu5M8VQgQl
	 w+Qv6yqIOm7vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E6A8ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166365125331.18171.96886078455636659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5eb9eff86501b25c9b502fd856241c2fa0a8678908b59cac672794ba972ba37
Date: Tue, 20 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663651253
