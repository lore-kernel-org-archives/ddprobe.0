Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F1517C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A88C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674188487;
	bh=JcWwytkBeK6GUaqhH3uY43wv+/juMxEHlAWrp+WVd5o=;
	h=To:Subject:From:Date:From;
	b=c3OhOHhLzOj97F3ptctfbxuiuw56EXED7XUBhzhEDDVynnpTtR64G5aHlEsuZefv6
	 OwsJ5cb77OW2d1J5C0R6tGJQhQlsMvi0+XB3a4mNki8DMq98eicABEaNMRRWkgE60u
	 YiCDP6JYnphZb8YhVS+s2onKc6Tg68f4KnAEVjUYsd80/1g5GSbySWOYrfbeaBAbKc
	 r/syaj7Gus7oK+Crq78X4Fh5RMz1+hD8WAoYE6YZPVSQDNay1oWp36k4mhpk+nhAFD
	 lesO5hy27dr9bRmdrrhGmBhqlO6hhQNw2NJFuXoBrwYl5DtW5KzoSRzPk0JdqnkJIl
	 3wcEpJOROOu9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F05DC46467
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167418848738.9524.6918385724272561344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708a460d54b18538b94382437bfc7bacd8a3d81539ac317c013406190a331045
Date: Fri, 20 Jan 2023 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674188487
