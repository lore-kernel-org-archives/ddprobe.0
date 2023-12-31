Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1163DEADA
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cf3CGecn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D7DEC433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703997496;
	bh=HuuLF5oVbB04LTbGCK5RT+uYJRt32iNeyYoOJHp8Dzw=;
	h=To:Subject:From:Date:From;
	b=Cf3CGecnhv+RMqFybE+cZOJkMbtBtLNQiJBGPLq7V1eu+pvQlBmfE1eh+gbWq3o0H
	 aEgsBFUq2re/JMK2YNnrx36N5rsUsyzc9n88NfSVQZYsuPrdPI3skj6gvjmVr78TfQ
	 OjXyVV8mksju2pKTGs0z0px2lC9Sg94fQjic9hmQXgNwWBaft0T4leNMyo7G2rtdR9
	 Gge9hNl372FLM8Xi9GGalsdi6UzFUa5LqWsYs9NQX8P03qv2C/6eoaH4oabfyVSoiR
	 oNI0lOfYURg3+Q1yWgK+t5a4XG8f6ZBdfxIjhLxnjb960gIa5GRle1AppWLLLWLIaz
	 WYikY+EEH7mDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62031C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170399749638.25247.15354819974353710629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4cd3d841f8756e92f68d985d4197ea257072c18026c462c63a4936375b1687c
Date: Sun, 31 Dec 2023 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703997496
