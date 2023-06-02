Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9DB15BF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 13:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9000C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 13:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685712425;
	bh=jKUVC+4IeGzQKSDHXNCoWiCu+vTlx8B6OgIZgWTKP4s=;
	h=To:Subject:From:Date:From;
	b=avO2dmZiaZuIOGkVLsznOWqfWYkSDDiWMVDh3gDr2RxPxUrvzGrk2VK89/JxDvBun
	 UAJg24CxJxhY1/wsSz4ch8gxx5spoDzU28ICMf+5BI5h3BwUNS8G0C01MxvWXjA0kC
	 6jM7SOJg0er/8KxNK/u0ZsL+47/mlmVGuXCS/RBqJ6brA5x/l/5mvt1zckU0Mnbl7U
	 91KoH0A+aqtt6XDBAWwKELbetZIze2AMvu3gC3P0sYy5E9ah4slKFU0EYzQTqTF+fT
	 GP/mWa4UNs6s3w/nB3aKg2aQa0O5WUbR6QMm1zLyBAZZNWNDz8VewGpdaDYnxSwXqa
	 QyrrRv43x3w4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C27C7EE2E
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 13:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168571242574.16729.6463879356617273064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7ce18e6fd504401daad99212bf1477e74e7ed542095cb78a63fcd0284d24311
Date: Fri, 02 Jun 2023 13:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685712425
