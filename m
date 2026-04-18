Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183402D2381
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776542854; cv=none; b=L2j0aiPy9rEYDoQvP5/bQbRSTQWb9jNZzj9QWel8qtCdubEve/cxFmbGoLv7lmb5CLwGKnYaRt9Z4I/h66QXjIvEXWkGlrVx3DZyOCv4HKE43NBKyZi50adPtLCDlR3PTTbszM7UP38o0Zn6ng5kqhAeaJeli97lVSYTNufJCio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776542854; c=relaxed/simple;
	bh=rNS75MX/sAZU5gYX43+cPEZRjbzUA8Qx3tHO6s/V7/c=;
	h=To:Subject:From:Message-Id:Date; b=sTPSAD8kIH0IaPTP+6HZe+v51QSY9dZbfU/tRJWAqehv7m/Hbf74rfrfryKpYCJuEMY8WCMYciaeNDTqqY7jZdgwobp3idOrzzO4K0IbBTlQJ2ioHf9GyuNbD9glBvIXZDOUXxhjw4SsXO4XltLvW6xbUDVxccMleK5lnFyn+TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QITefBFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QITefBFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1370C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776542853;
	bh=rNS75MX/sAZU5gYX43+cPEZRjbzUA8Qx3tHO6s/V7/c=;
	h=To:Subject:From:Date:From;
	b=QITefBFTGRxX7Og/CgrrBat6Ob8w/igsacrCirrQzHH/n3ex9tfw1/woQXHtjOW0h
	 hd3YtcGl/WUP3hfuRPxYKYjDZwJOrEX5vl9C1xaRF3ilp7/hVffGmO5pbLpty92pU/
	 3Wpn2pr8HnPKhV8BQuFBsAwQ3T3QL0SEst5gbg6n9GAw4j2bfk/uCGaV5ZiLp1XWos
	 mf0U4kZpNBP5buN5NGQFY2dbugiUjPlRSn56KR8oeEDJw0FZtzBu6jw4+gtHfOTaTr
	 tPBw8Tmrcx6zGnIeLINWpWK4RHbl0rYcOhzBOyY6rvl239Umf6BcVDc8S1rinnGHjN
	 BGO1+8QNVW2qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD540F99C89
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654285368.6961.4851905980312404498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eec2714376c74149ef951c9d4db7d698d891a86189bbf6ceb15d8d9a0b55a20
Date: Sat, 18 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776542853
