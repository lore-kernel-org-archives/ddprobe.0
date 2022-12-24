Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3F928E3
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D1DDC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671883287;
	bh=vx54z4+eutVPfPJWc9oiRNQ5hJG1RkF2JNzxwRl3y+M=;
	h=To:Subject:From:Date:From;
	b=ABg2c0ssM2S3XDprHBxndYa8aDHVwcVmoxEk/LoeMTKFZwsKDoo50iCKXdOPJ1XcW
	 8UcDtehcH9LG1jlLXlXnVWs5KzTvSjIQeMKE9UVHDlaoYByBD/favu8Zdsn/tbpH6x
	 9mcBx3ID0ceqcYAf1m8Y72OpyWzEKuHGeZIkAm3VbkdpnkzoAORCBXSyjx9P+uNFZV
	 ALw69XJjJLTZRxunA6h6O1ggwDA8YNa9cHFa3jtegyJu+9rXkRtyRbXPdVenjlmRkN
	 jMN7ZZ6fQPPDsv9knMIu66jbu4401ekLPF7Ha0O4C05gkY9v+2XxyDngJ+oXYmJiHw
	 suFqYbHdX3fqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6498EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167188328740.23092.761283731593163578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a06d197f12c0447960033c43ce35fede0feaa70076960b70aed93cf87faa9ff
Date: Sat, 24 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671883287
