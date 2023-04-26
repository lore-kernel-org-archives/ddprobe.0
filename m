Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A23110B
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 01:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07BEFC433EF
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 01:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682472366;
	bh=Lb/6Sxp+/FyWa/xnCPVdvs3PSnVp/pm3XMf86sep0tM=;
	h=To:Subject:From:Date:From;
	b=IXiNeGpoM9dUUK+LJHuijJle8bNcHgOs0TQRb538Gh3CHRooFZ9P3RYqukmEwO3BR
	 /TYHZLUtqjktvr16vBGp2KkatS2pxBLZg6TeAAW06TC1H+yofHV/jeKuQu3d7Z2gRh
	 uwfR0sBf7VyVpv31+VbTP0TU4Z42bcWpfUMY3SYHwH0HoHA6oo6JcZu3K6Mf+2g3N9
	 qdblyWyxhApXnqm0N6+ptqPTqLYVjTrfrpP8i4LRHvYyyY0//txzkFQAKdEEZIXc+2
	 NUDOVYAEsEgsNse7jiU/eoBljb5/KLfsYg8QlFP5sMmwQcPtasaOYDDjvTyq8+qS5M
	 BVMxlyHcR/a1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC9C3C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 01:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168247236589.3617.482192280516282734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494545161614895f1daa5b4824eff4c95a50d875f87e427cf53808579073c518
Date: Wed, 26 Apr 2023 01:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682472365
