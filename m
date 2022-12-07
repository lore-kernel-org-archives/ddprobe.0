Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C5920F7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69CA3C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670413854;
	bh=rt41qSlohyILC4yLWomUim4whQh2GWGa0P6NpXdKles=;
	h=To:Subject:From:Date:From;
	b=KRpq5WcZc1PYum9wp/RIEz+TjV+i7Vrt6Vd3XV56V3na1lLYDTsn+vmrUDfhZONlX
	 AHkHsIMaBIq9zDiI8H+7mZotreijVUBxBbMWlXFWoPd+VHkiA47S1/FiVywDCeLwX5
	 CqZvPUey/wMopqRay+2SL1uEOtNpFceYZDOBxzQthhkRR0PyXO6lievY316AGEUXeN
	 8jRtQzcudItxp61o0UIu9wqDMaPtuxfDuQLKzn+S428A5s2HbXraYtexJ2C3vd+sxV
	 B5Bsezrvaiwgds7Y4q+fd5n1HCyCgOaQ50LVeAhiO8CyjQ/c1iFR76cmZzWD5NR2Hk
	 Qm7tWpuXkXJwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5052DC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167041385432.27095.14531267085153375000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6299e6a8c92c8d6f8343ee2563d5ddb41c9abb4f7689d006e9445e1651434f10
Date: Wed, 07 Dec 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670413854
