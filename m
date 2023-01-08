Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF2546B3
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CC9FC433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673215287;
	bh=C3Ohz4h85xITmE8cZoRyfWAEhVbzpY+NQrnteB5Q+FE=;
	h=To:Subject:From:Date:From;
	b=ozZVfOimRi/L/Yi852ObOSbg12QZc1bghb4dvvhsD0Ntp+6RujHij1+uWg0FwVMHn
	 QAr+5YmZASxXp6iB2Vj6TshlfabRtjnLd6K+SpBIPmTbGq99PqUgzvHVc5hxe1QUup
	 hXthXc+nnvfNVhdgscJxGddnBHb2ERiiUs0Y8gfshwM04nIQJ3oLdZooJtVkWm6GW4
	 bIWgxpzGGVJ0WjjWNXprb6VsTPgJqXxnS96/imGYCehSrwxH8lXDL+mad05YCWA+Nm
	 dOT8ew+CfAq+DAaT+IGOVQ6T4/AkSGCq1TyJIWfte0toMJgtS/k5YSQqAFSsGIDZyD
	 1uQF85OSwqccA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EB4CC54EBD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167321528742.19057.15233785713300911148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3985d8be34429d63ff7c5fb437d29f6b44bab41550e9cae29fb37d388f793700
Date: Sun, 08 Jan 2023 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673215287
