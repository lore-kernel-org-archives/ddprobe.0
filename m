Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC81715AC
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B5D8C433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667781654;
	bh=LEl6oTcUMjqXcTSwHlOBYtypXuLxPArZYoJrBPLKNlo=;
	h=To:Subject:From:Date:From;
	b=IRLrs8v34JdeTSnvfWKYleEPiZ3qTnGDo6/61f58wx8FKAJGvryL/eNjVL9ltTBNR
	 Hib2C2Y+ZuAbnX5ZJn543sHRJME6Th3mwlrb6/ZnYQ5wNhn8R/usqsR418w1W4XoSO
	 A6vZIyQ+VAHv635frSAqqwlJmwlgNcrb/jcTfA3maHOI2IgZtzenDUlzbPq1vy1MrI
	 88CVvkcOZymOBkeZmgK3Y7AOV5D6cfp/lPO4igYlHZ0g/MW3YLMxuUuNhlr9O8WZQX
	 AlH1xenyOHL3xytmIpK5ye4Y/lxU9LhxIslExRcJ/3kyxaBOiqDF39r8fEmpzIYBXJ
	 VPfrbPA5fFydQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B623C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166778165436.21881.10088272165219108274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25a9cd2b0c1cd6567fb3e673be72bfa44210933bc71fd2a507dd06f8336234f
Date: Mon, 07 Nov 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667781654
