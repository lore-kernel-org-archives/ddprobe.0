Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDBE14F96
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 10:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C7BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 10:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695723308;
	bh=2MkbP41K93k/Cu7zr4yL2niXr9VgOkCOvQSr7498AmI=;
	h=To:Subject:From:Date:From;
	b=damPXrXN9zkCTO4n6edm8b0uI7V2ROWlFSRPl778mA0yXvfaQUOYIxdCvtzFOSnlB
	 TvOwXdaN6pxM5dgckhIbgAE7x828VJo0X3Cqc4iUhKtHS8beLO8UedciqmLTOEkAEo
	 OCNglZfqqx+NmPwORdXipRWU/u69SdDpd7wujS4P5aEd0Ej5IQDmEee4aaDDhfn/+K
	 8G75XKAJ330A8CRrwz4loiYt28xp/GQMd1a8Zp9hLAvF1ENCVMIXzcqz5Tq0HIBIM8
	 W+FqFkVjrQb2OTw8XxJl/KQTwnVj5wQrjTSHjoP40m8TgHApWBgqo7SLjr4Rrvij3P
	 q0L1m4/15/1xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95C3E7D271
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 10:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169572330868.25909.7585071118971114480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5061bc1c182caa73c6ef295b29cec98c060235a4bf98509f9cf8b612389dae54
Date: Tue, 26 Sep 2023 10:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695723308
