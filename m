Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D2E79C5
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 13:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7BBC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 13:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680010985;
	bh=CBkwWT4/qKP3KlnfCQcBG37a+Mmmu8aTZ3GnPvAQw14=;
	h=To:Subject:From:Date:From;
	b=KZ2R/zvnTET1ci88T6W6ysDwBZzZcs4ZKfxI+DM/UBXOxbLVx9Luth0CwG0If+8Fz
	 0+oK4pXqfYCDZAIwdonaJEOzk1wHpydvaQupAO9RL6SksnSCA69/qaN6iLY3JptbHx
	 erBITDOGwj5LeBJlT6kmAdXYUvcuUPYn8+AitXLLygxbUqsIAzNCQBqjfRMNEjTamo
	 aCQiXxNLDQFDdsxxa2rJTD12RplOdsNOqprV3pGnyWedcI692Hvh68sqOeehJXZK6e
	 8AOw75PtTfG4upmn9eZlD9p3/Cm2AIuhnlRNAu2X/ft1soP9H5UfyZWA6NCCLFH2MQ
	 8dwMojiSyYF7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1551C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 13:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168001098577.9606.10350746668315063980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a3162f46fdbe8e29304d0269dcd32936a91bd7382d78ae949320790988f356
Date: Tue, 28 Mar 2023 13:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680010985
