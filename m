Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91DB57F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E7FC433B5
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667839854;
	bh=JHvKbKj1/rEqvYPyYYLCEKIK8p6oEFZMurwu5EgzBlM=;
	h=To:Subject:From:Date:From;
	b=IBWYnQPpC7dDtgJkZkk1nvMZLTp+CsRI0+P24LXwqK30X5P6gVakaqjypGZgWTDY0
	 Uo4FH0QbpHqnDzZi+nod42YvDR7zdt0SQeaU0R8VK5vZ0AHsXeuDWsLnl0o/A+XDSr
	 K/lc+EHkHS9Cg7p0z9YoysgPHZXxzzOakbsQB2SSPihR998oNukjw+GMClh/EHo2FT
	 YtPi/xE6WG1ENEEZ/rDaMW+7YLBl6tIU/4R6Q4XVvq2ein4tFbO14096he7pbfTm9E
	 wO4dKV1loWeu7fQU+ugDanIT1Hj78EnDnQxcYUwc+J53ZW7P1Oa7BXkw2+oYxzbHUk
	 cnghNedrzn0bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526C5C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166783985431.23652.11552178428829838742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0a0472c6d5f38f88ed5637a7ff1b6adfd39cc587ec220848999282481ee380
Date: Mon, 07 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667839854
