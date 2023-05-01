Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5E67E
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 09:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6D8C433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 09:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682933285;
	bh=4nN8eDt8YWn14lMjhoTfu67Rbgg8eVssFKT9B3ju0t0=;
	h=To:Subject:From:Date:From;
	b=aq92n64WH+s6LvB8XffJTJjo/wqvg/tHuzqECVxJvZP9FpmDdjr84D+ufq8HGX0Gi
	 NtccUnm3MFbHALk63hCK3z1GJU7ZCrZkCyB6XpkOL1SV+A0FeJ0U8PgcMJtLfp63Sv
	 OlL/L+G+bzpR0ZBl38qw0It9Ng1LWh1KZFvwGZh8L9HimNJliZZT4nCWoJHE614QQR
	 0ns4kDncSQWQ93+0sZy+y0qBpNAQTUTCzXPOomnyI6G4Ndlbg9PGzJWo6DbQkjIjKv
	 dZuLK7K5Mmj+gN33W8IqQ0lNF3YGMgA+lqXVEaKRRJxYUVI403F5i6MBXjVBqLiGgJ
	 m6LBCOHKtzhFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4135C77B73
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 09:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168293328578.829.6111495760588826856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55563fb0dc50f5bf063deca19848d649691d833819ee59cd18c6ae4c7c309e0f
Date: Mon, 01 May 2023 09:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682933285
