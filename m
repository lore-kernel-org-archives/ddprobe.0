Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD65746F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7509DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670883687;
	bh=MEGRz60kIA+DsMTA4sJC3iPzX3KGghNVKuzOWBqzdzM=;
	h=To:Subject:From:Date:From;
	b=ue/R/A/pNUc7z9SZ4EVSWvYjh/lTcbiYFX+3sih7aVPEvveaCmz+ZzQyWI4ijLz1C
	 +TrR+G73nt7/cvSGttuCGdVOWVcVJZ3jCegXxOckYqSlYk0IDmi4+MhJXsRc1RVIQG
	 27yprFQp0GNug9oD67opeeCaCawNizGHr4YjcxZSKVhKNgjAOm55WSGB2z2tHEZ6Ey
	 xoszY7g4n9bPjrHO9hVtsk7BpsoItLJpaeOEFPLx/TssxKA8VIXglKNVmWQeYbvp+Q
	 YLN54E/F3VUCsC3ZOZgnzEzNa7loSm9KHVEPXwm7kv2FPiB7z9nrWgbr9XBA+UjOwS
	 iwy85x2fpuR9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F108C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167088368738.9534.13579933802880968701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b849c6a4e8bf2527d057c43da2ed6d4a28ec87ad2c24b31a40029f8eac0948c
Date: Mon, 12 Dec 2022 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670883687
