Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B9B20EB
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 803F6C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662578453;
	bh=yVaEs52vMquc1dMqdYl2BUdXFXAdjT6iyU9HFf+ahQM=;
	h=To:Subject:From:Date:From;
	b=jHacK9hXkUBSS3jZvmjhMF7UuKWT9gN8nuNOt7Hi8V0QzqHnViDxDvLPI7ONjQuW2
	 FUEZu8a6Ui6194u6uaCflzE8dvXXUro/qAjQt3AXavzIt7byH397LG6P/gIXcGoL57
	 wyW+hANF/MgTxt0JoDITzw8nSzU0bhikZyLRtN9HHE1r2H6/L/lB0ILzuw9p5myyqY
	 WWdx7EsbQ2hDQYnAUbNawG4H0/wnE+d7ZVisPsZGe4p3R/RTkWYGftKUWG0myKX4pd
	 12yaDWFupdipPb+xjqTGIRLRSPJGcIsFsauomSOCHYkt4p4j72ZONe9lot0w2GJr+6
	 eSvCVDUHn5k9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 659FCC54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166257845340.24811.3815801080584075185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 446f4cfd8657b3407e71eadac6360452220dbfef98e98197b483e302c9d468d6
Date: Wed, 07 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662578453
