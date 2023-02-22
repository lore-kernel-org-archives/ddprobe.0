Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D091C17
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 05:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB9AFC433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 05:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677042066;
	bh=PBYM21mgndz3id19JvJrsunGGcYPBYSkdaPBnUY0r+0=;
	h=To:Subject:From:Date:From;
	b=isTOfl3+1wrciN4/RB9c5Dk4NKwGwzPpTkfN9I09zhbOr3JiTp43ajp7BM/3HCARb
	 BCo9W9BELbBcsJc/NVk4s4EG0vziT0sKPQMMTGpnyI/fms7BwEhjvSYrUe3il+TkmZ
	 6S0ISCaxZRqrsGQ0HhuuV+sPlFOC5DLz84Z1Mlg35pvJ5/qMCkX58lvldT8o3qYXn/
	 y5pC7M+ZCZAAIBSqKVcZJeWzcmOqnS3vZcVnkz7XlTemTzdBYXB7zeN5OO3bJJ0SvN
	 ilns39pw6+BMKKoR+YJ9D7jnwXKpnSqg9Qe7x2Ys1xvZI6atPL59dFb09KygMjhqPq
	 bxklG4FKuUQkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB379C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 05:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167704206580.18206.6875248677229464313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c45b9da41ff1a3d89cd4ba52dd4dc939a01b4a8d323a5c28ac95a8611e5b88
Date: Wed, 22 Feb 2023 05:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677042065
