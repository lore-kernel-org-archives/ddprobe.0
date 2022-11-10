Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE0536E
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAD1C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668059454;
	bh=bRajVyG7c6Rryav8INYJqOfIlR4l4o1dPD/VpN/cFoo=;
	h=To:Subject:From:Date:From;
	b=SYJX5Z+3PNuM1MbpFsseE26Owqp6ykamdauU8QhNpK2ykcWepcl9zt+QfTjVaIPjb
	 tJjrETyNBtPV6OARMXKz8XtVtrHJ6f0tn6EGU/DhcCfpf6k/SkQvSjSWsb1GqtNNZB
	 H7vIcLxl3ax9LjXV5GFzyG3J/H5gdDdjuEq/fsT7QeU0rpYcfrzUJQ0Pj19ifFbq4/
	 X4Z7VX70oR+d+LHoHoHKap+3dCrBwM2fuvdYI6g1wSRT8Gj5g8LSWB64rWzYFo/feI
	 AZWDbbA4m+hQCSa/nBrxBjl7ian/rCfJdCj69pVK6YTQfMSgSsQcaPyHeiZLVPVuG7
	 qYH6pMa+QUtzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 564DCC4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166805945434.4620.11430867769611609996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a400a8cf340ebed7d09fbfa830671f5ff6289e73b59f0f057c31a249793aa97
Date: Thu, 10 Nov 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668059454
