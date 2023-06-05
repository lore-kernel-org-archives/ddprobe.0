Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6749319B
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 02:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA621C433D2
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 02:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685931545;
	bh=ulHGrMq9p+xTpGSH+11Cm1IudLiMqRnoLHYqbrO3mI0=;
	h=To:Subject:From:Date:From;
	b=S1YfsAtlZSUUWNEO9SH/pbSgeYlOa1TzVIoby9i/91CcY0EAO6CNddHgSZBoJTz14
	 M+wsKjIVrmOYuZ2pvmTqTrtKmDiLYOmfJZoGOTa02hYc9lvQiNIgdX7jiGIPo3zKtl
	 O/hg/xbENFu56+rMSgYOuBr7I4u7DL8mhSdoHj6Qm1TXZnsuRXjsC6U//ad0vLtp9W
	 o/flA8jOst831vBTr6QdeHIG0ufdkCH7mZGlTzeAfIxIoYnfNgXxcEdRZTI6TJupfo
	 rSp1hWhMIGt+koup3abNUUnvhvvGS6A1h2ALa3e1Gp+F2Dw8X0gkDj0A6aMFw306r5
	 BY3pBg6tCfHaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA70EC7EE2C
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 02:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168593154575.17655.12867881697381886624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0539e203d46194bafef375504ee8eaf183eb0cbe7f6a03196c011e09eea80084
Date: Mon, 05 Jun 2023 02:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685931545
