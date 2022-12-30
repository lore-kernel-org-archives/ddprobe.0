Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FA323DB
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F689C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672405287;
	bh=u+OYIanjkHWrAHt91dxOPNce4O4n491CQTiMFlc6Q5A=;
	h=To:Subject:From:Date:From;
	b=fUSqNPYPt5YG/80w/AJKkTL1FeKU3F6JvkwQPWxIEmU68nGJkPcMSf5ZQajtij72B
	 PWzBGuTfVUH2z1mgYsqvdTF7G8sU3CVetddmba0s9kzmkx0Epg8K7MOJCCt+0yM7OP
	 9AkT2PFl2GRZdHo3KPGhig0SBX3eERFaJgrrAdJSKe+e7DE0ET0OiYUdL+JnItvUrs
	 7O/6Ty+xyI6uKcBmYHdfd85WBnONUKvr4cr96OThEcZkkrNDtGEOnOZpzki3hLtqqv
	 qKOvwQllyRRYqjpt4r2JWL3tZdVZBVhfqAVw4pdMx2nkMG3JYcZjkna1zTZOAcIPOz
	 c7rK/61evPbFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C53C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167240528739.23972.8417547869817197213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa21c745390f6284cf54e858d50a99ec4396b2543477061fae27766574d178d
Date: Fri, 30 Dec 2022 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672405287
