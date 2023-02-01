Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592142F32
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 13:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB0C7C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 13:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675257246;
	bh=vcdC4UNToL/t5zlxZP7lFJ+lvfCdCu/n7PlWjNaaSSU=;
	h=To:Subject:From:Date:From;
	b=eYUGo4ySFwPAhx9AI80d5iBqRyXg7Yc3vOwi7xDgnTtpQERFFsXT4C9VvRZ2yw5ql
	 Xjtvzak6lRyctaaUfqAHPUpKJ7t/235VaNZYtZJzkKd1Zq57L3hBS2jAbkpmYfofKY
	 Upa9OmfXalgUCzUwx7WlZS7En8Afeyo7+n0laIDj6jy3hd1A/mp7W8x9lGILw4zGD7
	 DqVoGQ2eE/IW3vsGlNTEAZu2BkrMDO55QYqFF1I5iyr8LlHVipoF2+8G53mSe4kFeQ
	 nwu6qfLyOW8DXcOPkW26/Y8beakOegFB4Bo1JCEu+iNBm+6gbnLpcsgkxJTB+oTy9m
	 txf2qUjiz/3PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE8F9C636CD
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 13:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167525724583.9038.9840923629020005963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f6713c1ae67b1411710ad347af73f867aff9153fb85f7623150ef0159f141e
Date: Wed, 01 Feb 2023 13:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675257245
