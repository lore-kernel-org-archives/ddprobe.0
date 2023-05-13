Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37065A35
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 07:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48FBC433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 07:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683964025;
	bh=ui9lyJ8rnCluDLxHj1At2sbBe9nL5QTmDMBTlIrSzXs=;
	h=To:Subject:From:Date:From;
	b=qh8ScNJaVWkR0jfpvHXKh1ybRpWPkIWXhMEDnn7qhvO60j9O5976mgUJye+L3DJ2A
	 cDZlDJggTXO3ka86J+9HHqbrXWeI0R2knkTCygtt/XpDJ+McUuB0mgFcyi4UYieAtq
	 KLc/3yJbGTVvCRlSkQ152SETXmjexsMyOHaIGuguzGXxnQ5IEsyL5fJ+g3Kw3IZ7rN
	 34yw+Z3M39Dn4S1HbZFRlc5nkd2tLgqDGRyS4NWEiGkhAhqZYz4g9jRQOKSzzQROiD
	 HBBR0RwtJay2uOQ8Hnh2Kl5TBYOnfpWd1+8doTICZP7HahIIMRi8Io+0kWuVZSCUmr
	 RyOmfmYeJxYig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EA5C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 07:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168396402574.11458.6691881181716032440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95070d2d0080a2f990060440a8d21c8c2d9ece47892b915ec64bd2f7487cbdb8
Date: Sat, 13 May 2023 07:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683964025
