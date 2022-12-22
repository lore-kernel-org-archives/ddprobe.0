Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCFF023AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84569C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671747687;
	bh=JsiibXMcZiaJsIw9iveIen8HXIIYyA0BLCQYz1LfDAI=;
	h=To:Subject:From:Date:From;
	b=fnwyMdI2XxXod+44C3hVuaokRmpZg44l2gQgIV6kW+CHrJwuUQUV2WRp2aZI9CF2a
	 VptYsyLZUO/TPkx2s0zuwUI0tSlSSunHzyeVBdimKMWo8UeXqeE9AEzK92q/dq0pNJ
	 uVn04PpRfwVVGOrAVnWsZFsW/jlsiUgKPmV5tehXsrrvLBuJey4iJMOAq0zRVVa7AP
	 /qy/LOeDdRdv+MrC1LkTE2Ly4ZmdFIXz1B0QVhN/DLfq7M7gS9KZkAGzCqV7cQ+0RQ
	 mYHAInhzWeSou0S5QhnitB098OpCg06EDvp9O6hvU900+wLmlfU7wcYTehpswHsnIH
	 2TFcuwREfB23A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6610CC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167174768740.32391.11875525217607408472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce58360b4713dbadc7e27ce840e8169dbaf6668578447e2c0799de3dcf22efc
Date: Thu, 22 Dec 2022 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671747687
