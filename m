Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99A9F361
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 06:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1AD48C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 06:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686636366;
	bh=ldtU3qvqsMy2c7708Fo3gjWBU93yBFvmgFhw20tySUc=;
	h=To:Subject:From:Date:From;
	b=AyiSYubVw557bBaGwBng8G7x+arQix5f3tWlhrfD6rHBzfmIBK1KNqkFgyoIdq3n/
	 uwKtW/Mw8C95iAULvaeImgLFgnuuHtR3pua2xTYlOZkDVmd2YaNWCpJEpshOrZVuwa
	 hMMw7NaDoJgmhOdpWlo3dpYNvvC0sSi3gGFBfPt8xwoGZz5Dr07TSRdIpPkRef+94R
	 N7q/xNb2toZNy+70U6zsi0zh+7ms0UvJ+Wulhiac88kB+OJVG0CZrZXhzENi/ZptfD
	 RFdHYN/MIXNmnnORnNPqAhCTKRnBxVgmDzDvBYEF4/QzzuYwhsFQBpZL1yBEwTO7hi
	 /R5fdTeVn6fEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4D91C7EE29
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 06:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168663636584.5875.7967100007540910354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b572f6366b3663d2e4acb1bfeee06022dd4436525931b848f3dbb63e55692a8a
Date: Tue, 13 Jun 2023 06:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686636365
