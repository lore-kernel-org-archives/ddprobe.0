Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF44E79DD
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5E1C433F1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673972487;
	bh=L0KtBoK6lomGMNKZ6RUrFitbE2cbSFzSU/xdZWnM0DE=;
	h=To:Subject:From:Date:From;
	b=rp66UXyLigEmP7COZqAnREA00EITm9YZ9EGJSwRi+5VFmdzwN663IbaI7R7XHKapL
	 +i6QCzg4HiUq6uvKYHcq63BqB7nnFJZTPU4J/fUEWyTmgcMuXjis8ohhJ15T+S4DXG
	 6EmBLH6xGWPncchm87l6XplTLs+ndKzeky6NCTyhZffZLjY0EsWNSfd8FoQEK/LL5K
	 cE0/eRS4Ofo8VhYB9FriGKjIGhf1SlBI5HmdWBTLh6ym2XpivObaRARS/B970ft7GJ
	 gOmNge0LRwKyffXrA6hvqZOUil4YeB5kd9tkRJHFGdlWcFZOv1A92KAAVSTRhtuTXE
	 aB7XZeEKKq+Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6624CC3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167397248741.1885.4704402443371055330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b03e28b6d7650488163b93d7f1167c3afdb7271ce898269056b7b78d71948f
Date: Tue, 17 Jan 2023 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673972487
