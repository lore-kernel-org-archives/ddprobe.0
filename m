Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6651FCB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 08:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE06C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 08:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686904748;
	bh=hJyBfkUYoC5icpz/d/0IeMJkh7PlE4Wv9Dz+9Xpfixg=;
	h=To:Subject:From:Date:From;
	b=AxmxtQHHz4NfRGhDVZEZAFxBj3R5H2CTKAGMr1LCYlV9uaVMdFbHLG4hTGygyib2F
	 LxjjyLffNUIWvnSjbozp7oK4QodkMQ1qkWsJNVhsuWEqX44gyIUD+/X5z/exkMXMN0
	 2xIiFCbxiMHqYIlxERdXzt+6fJx7LMWrHegXvJ38IiUfooyCOjCm6jBbW72JZ9dHOv
	 FyhOLCn1pKuD4DzAYb4EKwlX/4I/vNHWHDINdIEMjK2kDOAqGlMIoUua/tEheZ3CsT
	 qy6a65hgSJZflhhwdD8Z5PxL1NYti10Cyzf+sY7P4PKHtn2xligkWZ8LgOAJkVliyr
	 jRWnzHLNtGwXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA47EB64D8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 08:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168690474870.28228.1521036298204887305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1743f67f4c203ef9b83c5e48a7ecd12d157580d9dca1db8e7916a5966c25a293
Date: Fri, 16 Jun 2023 08:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686904748
