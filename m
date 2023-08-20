Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A222F48
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 15:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C09C433C7
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 15:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692546248;
	bh=1AqHw520cMZ7w42u8C4jRofGHaSd5+Fm2T/leDHNKJk=;
	h=To:Subject:From:Date:From;
	b=AlL5WYY68CjSxwdS2bIALHQwu4yJfz6fpSE0OzFV96fZCcuf1q7JHb56SKAYQtfuy
	 I1GlsUAJ8FBfwUlZ83EvyRh3XlPlpxvm2cDYFPf6afH731jODDel5AG27oK/rb61LG
	 upJrDudluuRgLPKZtfWTtMEGm8foPGWXKh3y7O/p76mHs58xYRcZQ5Rt9eO8BYsaSU
	 aP0Mr0+vhZsUBHQPS7cFb+Q0qfYZKPsH10ujfvne9ljMEAlzWuB4jME+8qunHYEZWg
	 lc3s1SfPYXGjKM6nh4mGbL81HI4/znhmxc/7ARjkd4aSNNOdIAzOek1d9MmcLX9wOa
	 mpiNAGddBysHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54AFEE4993
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 15:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169254624870.8903.6200418352146707579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b13cb3c010446d0cff9ddcc2e0f04a9be51c8fd51ad7686853d64f4d97d97b1
Date: Sun, 20 Aug 2023 15:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692546248
