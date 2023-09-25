Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D76763CB
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 05:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C56F9C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 05:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695619508;
	bh=5wvX2cYEw7M7IxjX2JF2pgtxooFYlmQv3FJJtKZDPiA=;
	h=To:Subject:From:Date:From;
	b=BK0nFBOAsYsm/moyavQQiL0VmdGdFFcVwkdeH+D92hPPhk2WV0o3/vJCcMO8jv09G
	 W6NgQj8VcRV0awafe9hg2/JytixOjTsVOegW0AYKFSj6UgLBkSdOIXCcQZ0CU6car+
	 EFFBlFoHc4ZRe5xtjlSsdAxWqnIpU2LBNDgWtZQmQOidZVOlWIfw+PNX3fyLfyd5rz
	 dqsdRmxvXnT5oMkpY3FNKx+qvSzADeqdht497YQvbsPCf3ZBhsWwWpMPLmey3QTWXN
	 cext7NFLoelFAcVsR+9AsHHpPOzs405SPtEvpCOWZd7Y3o0l5jHMsv4hQBtIYr6g9e
	 LrfYoPGRQXW7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E6FCE7A89
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 05:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169561950867.30189.12201383435309893021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b348a46306dfdde9823bb652b421ac81e084291e965635785dafec1db8d18bc5
Date: Mon, 25 Sep 2023 05:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695619508
