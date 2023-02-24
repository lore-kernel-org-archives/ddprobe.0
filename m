Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461FFD2F7
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 05:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1A9C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 05:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677216305;
	bh=EOoC2yxHnn6MIvsNCjSuxkQJC4MTEGghP/LyPXkBA6U=;
	h=To:Subject:From:Date:From;
	b=SVrBtGyKf8helnR66U6O2rbbWqsS9Znr8bq51MktQ9eFzNC1I+MJOJoiWNo3Kd+VW
	 Bgxay68FCvPZ5daDxtMX6AzIVq+Bv6LdSsUBikt6z7+b2Lz2AZBMvVnR67ETe/m5eQ
	 QFR0AB3ooVaGKQ+q3ZwIDBh2OJty8IAnjeCwCM+/iR/DDFk2zFQtG9/w46wjqqdzaX
	 fj3JDWHi39b561Y+Rb88Xy2aM81UI4gzf+AwI1wcGiXl3iUihGeCwQIIeTgBrHpD/E
	 3LvPLcMDTgB1ptAQNXw4DRZ50TO/1MZmCvDFMk8BFsq4KmohzId+daomdVRipGobGV
	 jKY8eLL+gjmYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1337C61DA3
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 05:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167721630578.9655.14573349607896501418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e67e48035d3ca2572eb18e643c2e1a1d72efa11488ac55e1d73ff260fd79e3
Date: Fri, 24 Feb 2023 05:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677216305
