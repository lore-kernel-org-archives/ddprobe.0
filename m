Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C92B8C0F
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 19:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED8F2C433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 19:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683747066;
	bh=h2X4I7ATY+cM5Q3T1LmsFL6Y6rb7RYH6HY4JzHWYZhw=;
	h=To:Subject:From:Date:From;
	b=dtVsvGvAH077LlIEI7L/5+dhZ83V3udfbHKlwf5MPqYlIlC24WhifmzWo/gkslP0m
	 PGZw+ZCogWJbnVxLpG8CLybZ1fPLa6FbnDB9FKVDRilaZ4cUtSmmX+kBL/slL6x9p6
	 Ylfum2jk0eQyOMdtXBvIfLMboKqEbv29PjIj/zyqWEQTTC1KAWdBU5xsjgBHSc7/s3
	 svDRtvj0c30yjCDmCZK+t5Ws1w2B318E6NOmDF0IoOGjNhfP7f8vrqGY77kmEmPAPc
	 MAShlg633Zi354rk836/nL2a9wC/rdMeItp2W3iVctIVgmPf2DdUYyARDYTqHMTORD
	 MCC6CtB490RiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0FD2C77B7D
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 19:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168374706584.26342.10060181563750768127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ce8736d8ff9b03e9de3634020a646d587cac712eb7095ced17e9a12406ae9c
Date: Wed, 10 May 2023 19:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683747065
