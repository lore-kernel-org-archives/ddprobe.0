Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB6CAD5A
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 17:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2832C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 17:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675530965;
	bh=T+tWXpdB8usIwFLP1EYPJXz6klb08bpBC0T66ZFd6Fw=;
	h=To:Subject:From:Date:From;
	b=FvbmKQA8yjKb15ozYuYxohWLFBlqdyKKZyBP+Y7lq5Re+1SCKkjqWPdeFBmSE1g/K
	 Do0e0rKLYotyvwr936fwlohSVSm2nea9HtLwkXb9ogWSruHWyB5uNAv12KHiLi1mPy
	 secMCVmPCSfcwQw2ixRyKgHTF0EJF8beHB3nTEV8qBRriqjV7tdvpd8Q9LHfhkz2nB
	 sLvWu1HOAX2d5hp58YhdSRcomNneMPuRO9XfekBlv86yBveDQ9+BK09avkRqOKQ+ob
	 mVG8QUN427wYSyL9I9dbji26UcSKNV4qSfqmQeJrr2G64kPqsniHpSNh2i4L8XH6d0
	 VjlvId8RRFEnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B776AC61DA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 17:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167553096573.24692.15147680766468730745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494639b4bcce4678fb767761ee806ffc10caa4230662c992318c2c67767a4df9
Date: Sat, 04 Feb 2023 17:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675530965
