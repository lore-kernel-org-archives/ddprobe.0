Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A914D505
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 15:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8331C433C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 15:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690211528;
	bh=sED7nw6aMuZf5ogPsgDEj7ivxHtwdUuq61lAfLU24A8=;
	h=To:Subject:From:Date:From;
	b=WE1VmL0CBLkdWJnrYoqlX0HMtLDQpq+lAFhp3l2BdpxEz78KQVkBIKMJi8Xp/ZzVb
	 wqCgmqkHfWoucQD+Tib1yOQhCguh5w8Q2uWcp1XB/3ekX/JJHYWeNVF1QPHb/eqgg3
	 0j29AjQgzKxZg/+XzQKNrgJmGDJLCZk0n59WY2Un1QP98vQs1Efb0CAcXkQ4hegNAd
	 buB5AHjmu+dHlgCdoe6ujyDK3StBS53dn2Nq32xPKylDAlFKC0HPIgWG29t2SxEgiN
	 64y68OflGm+4kFnWRUNS/DLni6K/D8fIh9Ooa1ZjZJ971XlafVJMwB9vFLWg91qHpM
	 w3Q+baPlG03qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5A5C001DF
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 15:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169021152870.16498.103215866290901638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8663ec378727a7a8d7cb29c617414d51ae4d784018c62dcb91e07d866b119a75
Date: Mon, 24 Jul 2023 15:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690211528
