Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5041F5CB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 14:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0469C4339B
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 14:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676470086;
	bh=XiKaA6iQpijWvbP9j4SXRcjOEvEYzd1tWkhPcnz22ks=;
	h=To:Subject:From:Date:From;
	b=tVkNopdxgcBwDrs+H/RIFiAZZX8tvokrC7UWbJsezV3AI23FLsB/2sw1ICO3ArVpn
	 ezyFWQWxbu9pdjLfG6M1Xpik2/u1Dy9R/rLHaCEyupNxdJhselLNE3HZhcZ25pl2tO
	 cF3tieh0HLFyBN/ZShg8jjjCcRLdyHgs19TrIp9CzouMpyVt+CBfsWpXVDpdgAcrVA
	 bI/M/itOs6p4GWc7mv3VdybZqfzv7GCSmSagzQz3XqSoBPEGrsyQNs5WpM0jJHKkEN
	 fEybTiea8WRfO+m8hmhu0OO65AeCE+yte3e4VDABtijy8PyC7ZdlucSpWRIytIU8/c
	 smT8w3UTc9CuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D79ECC636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 14:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167647008587.17030.10100148335975124961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca918f36ad38420b3229c1d74fab6588a5cbe2df157fbf39c95795e59ec71e20
Date: Wed, 15 Feb 2023 14:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676470085
