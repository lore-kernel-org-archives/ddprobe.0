Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF436442A
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2C2C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668987054;
	bh=GMT+3s4ug9ksxJtVt7aJxqZ94gJpX2Zu6cwLzHEw2qg=;
	h=To:Subject:From:Date:From;
	b=MaApq1KebBZuLRANThF9NaMDpDjHS3+pTiSS3mN8ridibzTc2tb//UlxL+5AdxQm0
	 nkBWliM+WVe7jNzgp0SjmkO/ZeJDYf2WntrzlaOOZerh0YI48j1mMDpEmRHp/ZACcX
	 I+oLyVn7O8/F3E3/eli9HFFOGly4q0ukWmJff70eyt+boDPg0etcukRI8aTnwx/tdf
	 jVfIQCKhChzOJnmCbta9mdLeq+GRTI8ZFvIp2vZzJ6x1Eu00m/cFmMgoge7YGdDNWt
	 prQtVXb1eGJJ1VU3jH8mFXWz0s3i7cTns2dtwXoCM+bN9VWwJESipVPKahU/+zB83d
	 7aZbr7h97zf+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62CCBC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166898705439.27042.4887953879412982600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08356c23aff4aab047018a36aa6157faf40067671cec1972d043135c1bb5fde7
Date: Sun, 20 Nov 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668987054
