Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D79B3D38D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 19:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3BBC433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 19:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684436765;
	bh=7xbpcNzwOJpeQCY7hkiHgOqrmQEhtfNr5YU6AxshzPs=;
	h=To:Subject:From:Date:From;
	b=f727f5e+ovRNpghP8TK3DnqllSuoR8i2Xo4ouA6w56qe9uxXa4mj9c0lmqd8D1lyS
	 UboB4JmoeDE1AgV9Z39X0l0wYJKyDyMGBxAuHLj5dPkbLD2vOY8ySCnBs1AwhsahlF
	 Pd3+z+SPkE3nsvimgC8c9kHPWvZ4rXDBn6216tuhctq4bnOsWSLtsCGJkQ7aV2k48c
	 quzOb2JLc8FzRC4WYV/G+vP1EMB51HmOe1oK8og/+QA6SInCRVvU/LpzSVM6wJmJZh
	 CMKyy7qK4gSC3n3+ZJachDrbsILELApexdhAT5/FIwlJL8latSZF5hKJyCTDg9t+re
	 U4Q9e1Zd2wY0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F8EC7EE23
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 19:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168443676579.8980.4292403645568732595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdebcf6b41d31aa36ce69a735a50d3a193126492398f7fd769d50db0d345a0b
Date: Thu, 18 May 2023 19:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684436765
