Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA4BF15CA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 05:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 016A5C433CB
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 05:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688794629;
	bh=wV8YNrg6LNBKzsxWyhxexVG99h0bWh6vrAr2u4RsV7A=;
	h=To:Subject:From:Date:From;
	b=Pv+Z5s6YSACdHkdEBuTZ/d0h8UhWBX8UrY7KM9ORSuheB54ISf9F/hn0Reuo45KbI
	 URHCRvAFFvr1OGhonb8a9wtyJkKYPxBBBx0p71hBRB7WaNnkhi4oaCJAx5UWZzIpPj
	 dYL4KcrG9bQZxbZiOBzBYK8yub4UU9YrONQeyoTrqywrHnsYQHgbINsCC1fh1+UmBT
	 h5jX+/mpo061loKB6+e3syFeSrHR9ldsBHNlMZr/He4dXrGHXC7SDjL7T9ObRSvfRv
	 DwIcIEckooeoffU2oFsG97IZXG2fWD4G1bFErvrNi8KK5GF7jSExM6bQVaIVon4+Of
	 QdTIS8VpXBMuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6CF0C0015E
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 05:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168879462885.15227.4531251088590879016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed95e63c806ab1294184c723c9dde77b8f2331b93b5ebed3f9cc9758329cd8b3
Date: Sat, 08 Jul 2023 05:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688794628
