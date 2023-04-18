Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162C4290D
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 13:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE9F4C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 13:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681824545;
	bh=ZSvQ5SrtOtub6YxeyA8YITW9Ewa/oPhfjpIi5FJa2sc=;
	h=To:Subject:From:Date:From;
	b=fsYsCcmtg7y4uQ3CDVF2O2X+FSZA1XrQy2tgLZ92uzuOfgc+Mr0120NC4586TW+/Q
	 eJvNvbH0ezAMzjJP0g9MZgAS5mmD0W3L/wlPPjpI4qBQcv1GcNE8cbk5eyK0SGpqRq
	 Sd1jnvGyNMuEwP+vE82Qj2Rrpku2OY7PEzkMBvlzRZ8kG1/mkQrXT0IUw+EXtTXIed
	 WLF9a2JikkKVcYE9G2ZZLUQ4vEVPiKfdZMxFtmm8Br6qUGNmKHg+MNJlRsXgIAgIci
	 vcfVVH3A9yEeJr+DzOw2aqw3DMbwl5gFEQvQEfQtY1f9Sc877RsIAI7CqbOO6wAn0v
	 rJikw8UXHqtvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE196C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 13:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168182454576.1222.8899088598297321112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7260068135dc795703c24849138b496bddff7a50613f3d577c8970cf59f2593
Date: Tue, 18 Apr 2023 13:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681824545
