Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F31625
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7793BC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666514453;
	bh=heSKzreT4ngM8pr6UL5vtFr38B7jhwzGGYLCry3PiSs=;
	h=To:Subject:From:Date:From;
	b=K9EsfZRP03L5Yw0m4crlJwWF1lmlsfN16AcKXwMW8Td2AvaDNGi4y/H7CvOMznJBZ
	 dDMP8Sl4AQ9dDQSSCPPqg6hCnUuXqAuvfqkTimdEHVhvZLGDXs7Cyuf5n9hmv0ITVa
	 X7ZLLI5lVl7TpjJUTiZjEjW7Bao2i/RrFH1uZmIaRAaiUeEccRUUCTse6qnxMrD0Yl
	 s5P77cVqhdvtlILLMg+iGVQHTfdV+C4huJi7dquZTLBcNSlaJ0It5k2b4ki9rmSGMo
	 uNTYNI3H04s2Xkf963n8E+MS56BmTS8n+LoRBiSp5dU2+3tLEXy9qjOUw+OXyALpGQ
	 aM7aozEpUzmxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D5EC433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166651445333.28521.8035907089132520075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c7ff8c89fe3307cf7415dd0230819c9f52cf0a3461435e18e8a3ecc954268cc
Date: Sun, 23 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666514453
