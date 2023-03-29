Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EEF10E3
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 04:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF5CAC433EF
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 04:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680065106;
	bh=PNQwRkGXMpxvs3ljawOHaxfabDBvm0S/UdEyjd0yCxA=;
	h=To:Subject:From:Date:From;
	b=Ky/g9AKAWFPgfAkLHv+faa9jtyIUPjfe8oLu9B8/hpr1FTWSTTuz7WEq1tr95guqH
	 +ZL8V5bkchq/BsKycvmUQcSUrGTG4xg7r4EFtnfg8pysg05Gty6sHJZ/nE4o8saZ8W
	 Jk2ZDMRoXqgWhsh73BVizKy22ID6dX+KYfvOVddcGvfj7WtFqWDTEnxr1kfyKMKsAf
	 vmHWl3qXUA3Qzcvkz8/ax/D/s7GiDfuaRRu2NOpeDCGLo9K8gtqaQPN1IayXY85tcv
	 HjBhKVv0c79x8G12WXMKJio5daWnAi/uQpDnghXBTVdGbgaMYIftDhMg9YEztgvLg/
	 4h2P0F3FMKOaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1DD5C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 04:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168006510581.17019.1541844757403049545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2b1ba48f327ce4f5f9b9044610a9c0cf0d82abf2333e81e59dfb3f5e31ca75
Date: Wed, 29 Mar 2023 04:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680065105
