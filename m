Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A41C2D0
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsWTZGdo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9331CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703968096;
	bh=KRfb54yyXiHKJ5pYK7a6lGcG1owXVbFA8XNkkmHNOzA=;
	h=To:Subject:From:Date:From;
	b=GsWTZGdo0oXwNWV9Or+9VizrmPy05x83afVcIdEPNO6RffHY7GXvaZYJ0+rWub4FH
	 kjqmZ+DW1pdRH5CeUhFHHzCaXJ4x64Ya49Cbr2p+4C8pdDpQ04OkfuiGxHk4ZclhbT
	 +QXPrmGEGdQDd6ZZPDuP7CDFrSnijR8Y45vh1TgRP/w3oUNewrQO+Ovuhm1VX2TWl5
	 rTZ2lQiYi/NL5gBg+FhdHRlOAE4B6rTeXd2s0QbCXpD7KtHskEXyl36/zw+M8V04tU
	 uHXI4VHtSqwKktBRJ9jFwrM9yWlxxMJ2S0G426/09BqNAS0658XypYo17h4527UL9G
	 avzxyOwdwY8Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7156EC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170396809643.12745.10858745937519068164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1753c1863e1f5bf766508ea801e61f57d2ea3ed79b0cd4219a3bb85054cd0b
Date: Sat, 30 Dec 2023 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703968096
