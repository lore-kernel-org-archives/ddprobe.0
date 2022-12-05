Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B962217CD
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED58C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670214054;
	bh=PkeSxkDkZcFBRPmKMZ4VyodJew3+eFCSjGLARIZlQDY=;
	h=To:Subject:From:Date:From;
	b=N0UxLyZBnr8fyvo+d/OQhQBZIMwHnl3bBbdL+wHbgjD954AXEXBEoUvJcKUc6vONk
	 MfHOn07YKd62ub0+GA/RMGZlyJj1f1oexTvlbRi39ZerjnUnZ6LHUDRNZ4FHT/B9QD
	 QDdn6H9B+C9KRAzElwwl9/74XztI2AvrZ6PQqirIdzw21DJHa8O0NfGimwkluzvuOz
	 z86gERNJelz2e7FHl7tWSQ4xlNF4bntUYOjsQnkZTmVyoQ41wGp9ZzJUxIleomZdAM
	 aY3ircv56txtdwv5qCHpX+3g7FBXAfmFAo0jiMrXv18NYRECumEota8vP/N85c2y+g
	 qIOiWtXJgWc0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F047C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167021405431.2885.17142079048642191959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d33d2f35c27ee643f8c97005345ed58171627b03db8f44c393bd4992f5225dc
Date: Mon, 05 Dec 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670214054
