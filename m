Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3728D79CD
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 13:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85E2C433D2
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 13:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675173185;
	bh=P7d6hSWRZInR4pdfmJ+/lLit7+/W39RwBBoq4zU6Ges=;
	h=To:Subject:From:Date:From;
	b=uaXB7uz1/+AS9CQOUUSeZCdrNH2QI7RYN8amTtTrsE2eJkIHhtZrYCJeSr4ik0oNl
	 55l1da0B6cXsO6XZ7F7Dwa7iPjF+Y9GgZl/CE0Js/77aGqZ4J2It1X34D4EqQxj89Z
	 P6C5eOF665eSIT3EOCymkxRmy5sZpzxNMP7i/lgK4H8BM2X0KXH/WZhp0AKMGXHOAs
	 tXsLZxeVY2+KeJ/Px9pWF757PTHmE+Siuai/sU/I9BJ0Vbbo1HWJe1qwL4fRNl9Dpc
	 9IrQUlw2gWhyIYJ3sczdhlswEO2Ka7KD6eZB2CFFybaNIT0zMCBW4O6uIlfYEihDWG
	 2mDHgMg6AZuGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B963BC38142
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 13:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167517318575.4759.11958064617959038240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf85205df620f4b684c882159ce98cdf78cc5ea1dae82dd4b0db52fad47447d
Date: Tue, 31 Jan 2023 13:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675173185
