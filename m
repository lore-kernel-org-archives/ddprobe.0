Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A9E371
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B7CC433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672023087;
	bh=rnuH21G/qkuSKSZd++ukqH62bnlLKyjEJV602Q7Wdxg=;
	h=To:Subject:From:Date:From;
	b=nxOy9wFT3VFFft4iGvZ8rlLVbSRY6TrOKPVdLN5KoktKZK4aX+zMrI5xqOJEtv2ih
	 RJ2zVuJ7wk0Ptw6DWcSI4qY6w72kbYK1m0+KjSnyyez1A9KN+Y5HFl+zgb6fx9OZ5R
	 xyFGDGRwIRszsaARKfOY66IqPvbLzaURU3NNLOZSV29HMwokZQuJ5/9MObD9NXGlzM
	 O56WwzErqJbagKi8rkA9WjJHcH3ToGXcLpEQrBIOfX9HGKt2UWB80bQ3hroX97fFEV
	 5IzPQc+aGOKLHBYGDHVZ+CU8gl+pFuux0QtTY0Euw9fmslbmsc/HReY8vQERlKrbCJ
	 lhGnexGZ8Klvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D74C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167202308739.14986.12792489474733204268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1055e2c36d10147907eb6089dc9e951dc0476dca5263c4086f396222713963
Date: Mon, 26 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672023087
