Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC173D38F
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 21:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E292CC433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 21:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684447025;
	bh=lMqS3yeMj9Ne0+8jNuQ34Dt2UWe7WqakB2HkxCVuVMo=;
	h=To:Subject:From:Date:From;
	b=FqiKeKeqVQBoyfYrewOp2u5yKszpk/tjBTZE0KSt8qQyd8ZeLp97pJHFljMzle+HK
	 OH+myV5qqgdGUq0FRsDeAe9C4kr0f1HWaSSnmnPXRMEqdl+hWX3yjB6JeKjdhjmp4E
	 L2drWjDpZvtEnRPmHWs6gsy6a+YwejD5lHcW834286g/scmXHxQE6M2ggxa5Bz4p1y
	 5e2Zai7quI4wk2S+yPG1WpAK82bnUxfniZobSneVoT9SKnLTziEQpWdjJITMn6l20/
	 dHn0OoONV5tPcNKgIJtzJ3n7C2E+DVnmeyadT2F8hJXxc+p6uAJWowe8yKVfOc4qxv
	 uiIlkliasbTVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE324C77B73
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 21:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168444702577.30703.8813148739189600786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee55ede88e193fe91ea665653dc739bbdaa2b16b371ac183abc81dc4f7766a88
Date: Thu, 18 May 2023 21:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684447025
