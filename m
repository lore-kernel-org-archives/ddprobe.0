Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF95E10798
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F733C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669935054;
	bh=kuaavIRfeeBHf4P/gyNMgpWeCc9PCOae+cR4aYoz2oE=;
	h=To:Subject:From:Date:From;
	b=tiFrzKz9Qd6fvhQmFi8eHIaM7nIEKeJJ7Em/9FBo8heEOSWifgxiMpMCAuTakrzy6
	 CjwzYc4RflUN12JkwQMZsTdZ38fIAcBr34TUdpRzxamGBxlDhFbbwAglBc+9+yMWdQ
	 BNpxrh+BKo1nJmGXhf7meQ8uVr8tGW3hIXJTv8zzndrXrDxtVxrFQb5s1TPK62xHLJ
	 BRpWbz0rrC7c914h24tV1ftV6136EiaFs4DcbUPaLylEGKXyETY8i/UjPmkjsDa1Vy
	 R5J3KC13gexDlDlFzWswAvHt+VnsrZ5YMmgIeI2ZG75E/dJkE7IwB3Raa67LOU51yW
	 9fOof9Ugluwzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54467C4332F
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166993505433.18285.6768676884479158780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c576709886d7f85edb4cb1097891cf05ad841622fc1bcf057369138c9ac9a5
Date: Thu, 01 Dec 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669935054
