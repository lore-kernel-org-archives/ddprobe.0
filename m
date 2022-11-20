Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0044C62B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CCE7C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668914454;
	bh=lBjT/NDdr7cNvJXpNfC4BAD+LYPVdpqoYU4cw+E4Czc=;
	h=To:Subject:From:Date:From;
	b=efOMAiUCCxCkRLBCLmRzgUzGpLs0ljpv3SVDSfUoGyheNIJZFy6ntgx4Plq//Wsg3
	 FinMIpvxS/8T82rjBE4RCj94FCfUQf8ln4P5ewbUkkteq5cc5DaX3+bLXhl+Fipdyf
	 dR2NPU+YYXXXUk8WMAoPTvQUjZ4ZVao60tayco43LvYWe3UZNrQ6/IN6aGgcLBVJBZ
	 6mtrUrER+KhANnC0+EDvph/M3eqlQjLf/RyYdlw32I2fV1mvO/+SoITfrrBw6u5axr
	 JIFhjvrxBG9DCz7KFE84sjQhy7qQAAq2E4RKRDRe+0bxbWbcTyXupSAnzwM/1a/k7q
	 HlZP+dFHgW7kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D268C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166891445434.3575.12667402757677743526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02bb5b1b09615be6815ff8a8a13712186f5564e7f365d368cccf5d15c64ac7ea
Date: Sun, 20 Nov 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668914454
