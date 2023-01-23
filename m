Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33ED4369
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 02:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8560C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 02:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674441125;
	bh=qAffOsDqrMFs2C1H02rMM9fhN3LOIuYSsW5tjHFR89w=;
	h=To:Subject:From:Date:From;
	b=nxpgKJxRMl7P+BU/orhkUyuQ8MpKwNME+xKkPLU3qyegd4DKJE6Vl9EpkG1e5vHpZ
	 H8+AAMxHlN9blwkuU+W5NDPDTGUdwQq6HFk5qLNZDh+KlojN6sNyTM9TQSsZU0I84p
	 pZgv1khJWWdc/Ag1W8BlBuFJ4ziOEDUMQF/iU+EYSPzTIj75iO36qvmyiDJDFnYIXk
	 Fqd7x9jMKsYgCT1d7m4YvzkZLNX1+2mT2C4TvWOf/ISxwu5Yjs0JezBuJvtVgCyVA6
	 xYF8VX6TkG0Aj/4OavWFCUgpxwo73gnqMqs+usEO0iXnTbJ1gozjGGMvlR212T3qyY
	 olmn0faymEW3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCE5C25B4E
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 02:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167444112576.31476.8128457037155516367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dffb09ec20c21b9f2f14fd6430155b1b5b57b20c9c5398bc64127d8df56f1373
Date: Mon, 23 Jan 2023 02:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674441125
