Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA28F2C9E
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94B25C433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672096287;
	bh=oUJ/cnOC2lCJoqpxUVAYeD4kP2LowrqH1MQLr86HxXw=;
	h=To:Subject:From:Date:From;
	b=Ko7tgLiTSKFkTCVMPGhKPnxCM4H5Xwlx57imG1DZ2z/gCxy+I/p9hgBdQB9ZiLuA3
	 uMWhaRntQV4DJHnCh+OVs5ZFHLwhncNXFy5qL+2hW1ZIwsHHOdNReJQhyA7HIBIOUy
	 jYFn0jo7gjlQeb0vxABAdlyJRnThbqldZaGdMN5YwDQkVw1odZelQUpJVfH+w84Luw
	 3FJAgNdZBIx2EJN7sWzmStBKEhpB/dRB8b+5wzqlwVoeMxtDZ5U5JzsfnNCKl3Vy7A
	 c2XM5eV6fq7fIMzz8/mDLd6GXZL5zVHGBzZLWh/0eONtrU7dCzzQBuaeG+M9eFd8Xc
	 DDlWaoiB40vMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71A06C4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167209628745.17208.13426722211360454047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7478c1cbdc8cda21a7a58186eb0bb65ae3756702bcec35709e16011cd7f74d9d
Date: Mon, 26 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672096287
