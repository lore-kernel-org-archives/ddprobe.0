Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B820B8F69
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74718C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665568853;
	bh=Iky1HKf7dZuyqJVSA7k37AkM+Zsqr+UgWWHZG2LHQ1k=;
	h=To:Subject:From:Date:From;
	b=NStG+dKu8PN5iZ1NaUdMUAwJwUlkqr8D9aNR3pKtkg5R0Ber/mjjJ8/FHOiRSOgwQ
	 mKQK559J1vUeH5bTXeOkJYoqNtEMH8YNVR0oTQfekc31woSr2UPB8FfLMQC8n5BEgZ
	 4dZSF0uSmxLxMy0kNPGyR/c4Z2Yd9S1+bjPIb9caucl4n2b8GU7LXIL3LXtxmKZ3qz
	 jDvbRt0OwNkKnub2I9JBzU2DqkRGXHyzWOrg1B2BCJ0EZPUVUDSZWzv9V1VG5Q9W/4
	 naE/FBQ45RpJH1pMxkbgBAWfKl11vaQCSsgEOL8xo3vhIy4/yoJONiimN5KtUHdi9x
	 Waz9oggrhbeuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F91C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166556885334.29545.17928042003558839672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc2239ffea1e4d4c37f0dfd8ec30e9dd19c4f06f4f79b1b9395e5c60756cdbf3
Date: Wed, 12 Oct 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665568853
