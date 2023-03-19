Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2741846
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 14:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 045F1C433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 14:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679234706;
	bh=b3dEGNXI0Bi5kbXy66dDhcKkitIP0X6dI57J3obgcTA=;
	h=To:Subject:From:Date:From;
	b=q5tIkLWuNIdBwge30K/Rczn9UTuoD6YMl1Eti45gAuXAkJsfj1pIoStqQKyz8AWOV
	 n+7TaUF3u3Yw78J9vCeb3rum6TOOzaeaaucPpaDQ/UeYNX3vzl8CVzXsgC5guDErP/
	 rhUUPvDZnbQlXkSmoKcBXpaCh0mMtgz4LewwBJ2FnjSArSLthA9AlXvwzba7l1nFgJ
	 TnYoaWugf9KF8KEzxCzpjADuCrF1VLw8yyPPomhG4pqVqhQwQhV43UlsR0Nb2Y48Fu
	 iJgHceEl8lwYSCqb78+1qxgRsFgLXq+DtK4VcrhmrU0xWVnlxUZbNbjn6wRGHdNaN4
	 UVwPnjbUM/PSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBE34C7618A
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 14:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167923470587.26139.2394755580539492315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a1e303bf8c0a9e2be469328be3ea753a8cdc0eab5020cdd1c9dfcd2ef70943
Date: Sun, 19 Mar 2023 14:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679234705
