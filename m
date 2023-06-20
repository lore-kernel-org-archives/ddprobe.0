Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5844E1FDD
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 07:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F9DC433CA
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 07:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687244528;
	bh=AL75n1ALgd2+WYoQfZcf1DN+/DhIz+6HONZ67OQ8TBg=;
	h=To:Subject:From:Date:From;
	b=N98RcOpTD1gzKqezaWlhI8Dt+5MiYAwxS/cUcnbZHY/cZG1kLttMX81Rl8K6FeoTI
	 JAbAmqFLW7knuAM/6nN0R+vXwApalJghTdgExv5ma0hY+zNz7J8ltud7ZAXCOnvP2H
	 ML/Jd4fluFyQVuW+NhnRX/20hpelXHZ6xenTIrTE3D+ufm7mOCNAP5swKZxOpv+yX5
	 C7SI4wvMU0B6qAxk4hxOL+5WlAIt6iRH2PuZ+lGedBVOHBkHsjKWyjw0rZ3fYRriwj
	 FVH3ycgqNyOwuqHnK/Lq2k++2TxSEYPVT5D53h0tA8v+VukQyyacEfZfM36zt9cpdc
	 BNJWy7HRKBPPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BA7EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 07:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168724452872.17121.16506461474773143730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245f415b22454b6d2d3c423158238b7995f138c26c4c3bbdfbd43fbf70e4bd03
Date: Tue, 20 Jun 2023 07:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687244528
