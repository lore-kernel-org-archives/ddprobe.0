Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF817F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8838AC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672708887;
	bh=iH29UmXeUpNrOLEJX0ZQSf69aLk8rbTBCCmcfLBL5J0=;
	h=To:Subject:From:Date:From;
	b=GnkAS42xFwxNTvQdzjPgojU8CY2D75K5nSxyCc4JDwFO3xzPZlJBFo7PA/ymC19Pf
	 PJICTXAmZnni3SbTBP5Bu7ZfCF4MEQ1OWcLztMN3NVZujxUY1BgjgurwmvXsk1/CiJ
	 jn1zyBL4xeLgONzn8YwFfC+5grkRzh8FlKnqFYhTeZTXZixN3LVsq4WDRxJlh5Q6pK
	 3Ija7FtYDTOoUDUHt8vRQS5DS8toon2kxM87iSiQw0UPK3vMfvT+3WcUCB2aOI21FK
	 KYU7LM4iOnhXPWsyscpG/NgfYR0RkW9cZSJJ6RlQZRxxUEcjjeD1JhaNIC+97C2Qs9
	 SpTbF6USQJuFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B581C3DA7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167270888743.29400.13873700935539431339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1dbb6f49838b110b53d0c33885418735b11744550dacbc4ffc621f82b949bc
Date: Tue, 03 Jan 2023 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672708887
