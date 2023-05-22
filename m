Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E970174D3
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 21:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01BC3C433EF
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 21:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684791186;
	bh=nV8rYOc1XGIeOhjYsZG9MLSY9dmhdxfZUjqxwQ+TUsk=;
	h=To:Subject:From:Date:From;
	b=J5M99wCNNfBnutW0U5RWwwTEOF3i9hynX9p9oYiSc3wh58XdXJDv+r7LvsKKlQZ7L
	 oii2SdB9hYqXBYLXQ1ctIDUpZ1FzO/K0t7q831pQ/rIwez2NG/nklDqmHdNA0UXO/2
	 OvOk3aEprtEn6vl7K0/ZLnvgsbtdxsZOL/ufIKgbUBMmpcjt3vH3LL16EU2Jck18eE
	 Zi1PRmXRMoumc+FAv2/PawoCpRiNY4rpBls038l3/BgfKgYPp3Nu0WK8BiCP0duQ0A
	 LW49vv7UNGaquCLaYwlEXSV5OD1dJV65NjXuFkby5Mcw6662+dK3Kx1EQxaX6hRUeC
	 UgpsxQ2k6u/5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8197C7EE29
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 21:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168479118587.1312.9436631458325171668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e479451c09d6723d886d310aa6ba75b819ab6e6aee2aa4a1c35e7935785c856b
Date: Mon, 22 May 2023 21:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684791185
