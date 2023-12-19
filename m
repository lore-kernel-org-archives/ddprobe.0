Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F243517980
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSZ9xDV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BFC7C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702988896;
	bh=pCzL81bpuw0WSD1hLisk/Ql8Le66F0ImB9kcQN4jQxg=;
	h=To:Subject:From:Date:From;
	b=MSZ9xDV4VpCl69/V6P4UtfhFYoqp92EUeLZnV5+i/xqAc5zbFiQIlQGu0RPE2qEkG
	 3VsJHSTIP8O3NSu61IZgGuYnYRFaEpx96FVUcYBqLzFO9RdmXRl6xrNFvi8etybCJ8
	 79032iFzcOhltGSVxDxC728QiYKgGlR/PuUnrQGRg559Pv78lVJWvmZ6ZLnPChKTOQ
	 5MQZVuNKq8e62nETblUGX8/FuW8k5gTbCy/eG37HswE5EGMRCq1MeZSp3cMaR46eG/
	 +LeO8Z9eUK6vCdreoafqrVeN0klGn4xdG4poCiCNmFUi19Rp1qXVIH6dx7WZxSbcdg
	 EvKwFcKjDOXZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61373C46CCD
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170298889638.27107.4399321768117913338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b44508dc39c211d8882e0330430022bd6eeb726fd1c98879ccda67bc4238c59
Date: Tue, 19 Dec 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702988896
