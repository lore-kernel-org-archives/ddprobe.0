Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF19637
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8141AC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672810287;
	bh=+iOpTSDws6zvj7SAEMF5wlJe6hVcwfg34+d92usRdpA=;
	h=To:Subject:From:Date:From;
	b=N7gzfp2tSSAX62puYFBKRWQL7PlLaxIdnw1R+LWROp8rJqgd/vLZHtvnHvzBp0Clh
	 G+P5hdopmhHGuOnfMmk9VzvDdKGL6GHCOOlGRJJ1UC9Jb/BTSFZ4AjvJC+x430w2UJ
	 X6GR2R3dxfqx1i4+N71aH4j0QpWL3galGOsL8Th1y8RFWiOyw3bufBn2+iIZYc7spm
	 2REcl3v9q5fAuGa7ES3DTw39icWsVxbNjH9VtO0DhnLQRV6gEvizUlWaqB9z24miE2
	 JSbqAVTRWjcBsBzdKAduLEINOqGy1B4p+GBpqiAdBriaheNefYD6Or/A6oYoAwIyFH
	 AMbnI5kamYFQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611D9C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167281028737.26222.6278264470401291829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3711a46c9e054b1f75a7fdfe2b084daf2924eaa3c89ecd983b3fd25e32d47ad1
Date: Wed, 04 Jan 2023 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672810287
