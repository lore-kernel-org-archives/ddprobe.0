Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6029E259C
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 14:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C183FC32791
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 14:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694097248;
	bh=k+2c3gYMRzGoyf+NwpQEBL7RfLVwkq1PDyf6g8l5+Pw=;
	h=To:Subject:From:Date:From;
	b=YhY5jgzYb5Hf11qNJFLTPlTLE1OC/TPKSpimTFJXa7f06pR992EaEaMqRDjUg0gmC
	 9kP/FOi7weiP1itIaTINSIrA2NfbkQOBo+uuxpnIpBcq4Vzh1xJqJWmd1zxrAkQzJ8
	 PXhrf6ud0ubsBSGwxuvicC3QmTNa94rZrYafGBfoW2iL2QZxd4xf1PY4XU7QguqYxo
	 ENegouAPSZfVK3HIv1bkk77KOidd0dwTaqiWQ4Av1trsxaRmV1SU4f56WeoOrllxuF
	 keS0Vdm1O5AfQEHee3SNUBZa3w85NEqN+hcUGX+9WwJ2jTVMhE5FvQBbdMpZGH8NYf
	 t5+qK8KhPX5Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CB1EC8732
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 14:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169409724868.32664.14952452845750147629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e0a6354b590f9cea70404d9f892ada49576a28be6a5a4f164ad80534a10e738
Date: Thu, 07 Sep 2023 14:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694097248
