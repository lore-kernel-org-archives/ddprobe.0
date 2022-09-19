Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67A97E8
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DC4FC433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663562453;
	bh=NvvLTtaxm5J4X9OtPRn2ROxaGbbJDFVTX3IlZFO+IHU=;
	h=To:Subject:From:Date:From;
	b=pj5qWNdJrt1cET+VFL/zZYZMgff48zh4Px3Bvz0PqkoSRu1OLTbwqwleppQt484T1
	 7L7kLhuoB1CqO+yK44mOhjHUZ5XEk99e8NPCrw0sWfyzFkj5PgtYVhuS/dbIUEXbjP
	 P+lab9RDBPBlA0hts5rM7/sxeKevF+tfLCl4pBznovV9YCGX5NkpOOhFp3HxEoqauJ
	 n32HikSB8cp88rp7aaTOQxH7efcf5UXcGWULr2u9yANbRvgL7UG/44Tdq7oL9SnaxN
	 tXOQOw9DCznGD+3Fh7y0wWum1Nb4pQUB8ukP9/iHQ5ias+rbmxaVal4axrvVEc2FAS
	 P4lgSox3uFYlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E13C54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166356245332.1117.3686367643696157616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec9509b6a2890b61e9e66b10c03ed4931a237f3cd8f11ae3a3d891f1d1e3f40
Date: Mon, 19 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663562453
