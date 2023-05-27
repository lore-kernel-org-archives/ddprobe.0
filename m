Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BBA379
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 08:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F84C4339C
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 08:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685177285;
	bh=1OJUvXMeWypNd2SQNK8DN2q4LfYuKpfTJIjiRCilFgo=;
	h=To:Subject:From:Date:From;
	b=HvfYxXgu3GIm/jFJhdFOOPjpNHpPJY9oPtvNB62+BeMuL3CLmUIPjWVnx4vU93wIY
	 nJwUrN1UgKufbz1ZCdEE1W+NHUdWCYiCmVjTo+lPsYOR9xJM7Kd/KMT5Y8NUTAc1Rm
	 KhfTce4M4ZjT18g6D3z26Ijz1nV7Xg7pNi7+cQhl6ZUAu0vKl9Rb0VF3n/ak3pSgik
	 7XTHoJmmpeZ6tBRctnH2UGO6FBsgwTBrTDj1ucLtBY6OFwNiklwehE0p61N2MMpP3/
	 LDszYglpOcpYF2unh9g2l2PhDbqmPMRLjreEMiV67uaXiM+MmNYaU4n6Z7vjOKJSzd
	 iwAT5PUpEddSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72A2C7EE2C
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 08:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168517728573.6644.14913952849639935368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ef66a862e6fa2ec60f6bb7aee6736570e21960feffe2a66874a3c38126058b
Date: Sat, 27 May 2023 08:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685177285
