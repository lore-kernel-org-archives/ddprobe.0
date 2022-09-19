Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E6F256C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B11BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663619453;
	bh=01y7p2U/OW57Td3PN5h0TQngq02sf9MMnWkAiUdmxSU=;
	h=To:Subject:From:Date:From;
	b=uC7ixMvvqP7jeCDDRAueQNIy5g03F1K5g1VIDyQYcl78GFBu8dY2GrkMv63Wz/o3c
	 UE6GBflFqldmI5lue0tDYhhzkr8gECGGx7T+PjLsJn068pGxrB+szgdahB1uBbmyB8
	 7J5GRuvackUMPQk30cFlQSPf7f7xrtuo+haI6LEzFcea0FTvXjbpPNQlxOX23LdMCr
	 JVZ8fw954Apwq54FAKELcoYKLyRoXluWVMcp6ggIweMBLBm8gz/rcUI/zid4cFMiR+
	 bTNiGDD5y3hJoYuL5hhWF8hC11NJpv9ws8GVjTKlCbCQaKk9rN5DmENBQQI9j2kY60
	 se+NERlsf0Oqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52243ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166361945332.25922.8078731879460232167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b90a1fea13ae2f28de9f346cc536ac27926f1c9bdf05d2c55d72dca9bdad075
Date: Mon, 19 Sep 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663619453
