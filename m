Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38DC63C
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68B5CC433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664960453;
	bh=UK2I3w23QRBbT5vJgjv4qAihUyBIivD2bQpvwMR4sTM=;
	h=To:Subject:From:Date:From;
	b=gRNkZ0wfwVYk+tyxTVlU15iVuArRVaseu575dE30pDMrQ8CSQIafPKjDmk4tiTWes
	 HAphOPtzy7m8mCV/0HnZ3lGpmUfktNz+/yeSL6r4TCpC8rL6kotv4xqADanbm0Y1lS
	 EMxk1AxRZDtNpeyHw2js9oFl7BOWwOC6ExoFhNi3qkDgthqYkMaY2/mg0VVasN5/rQ
	 dm4u4yQAboQHe/SFIN7xFpmxkNX/9fADZiGsDZphhHthLnLz8Ty9h0XMTmrKSH8nF4
	 4yDV4Prso2MD4q+ERqnKJc/lqSc7vtDTrxHJonKQ1pnGpexG4ZMvjQqI/sC2SQ3YcQ
	 W9LgVfo3zcLWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F67C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166496045333.4517.15526447585230755022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae675d389adcb745e470f154027718a2bb0787e5dc28c8c7d9886ce5893c7e7d
Date: Wed, 05 Oct 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664960453
