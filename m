Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511D323A2
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 10:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9078C433C8
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 10:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691230388;
	bh=9Py/ttr7VnwoBw4kg49VE6oPgFz/+0+e8zOJ8TB7r3Y=;
	h=To:Subject:From:Date:From;
	b=DK2w3rmRzkZAyQ+P/NnXupg4MAeAXACIKDP64anHhcxd3/N8G3hEmk6iF8UuOShah
	 VRd/gZ68JmODav7DapqarjG9gt8XLOhPA8PJ7JNezvjkEbqGzGu2c691PZwpIoyK4G
	 yFEbCU8QGfFnnpG8pDiqWZ5qw4G1snlFad1ZpTQjlFC4PhPEI6Mh3pRtGwiAvOh3AH
	 Xi8eo6scffS4443uyCWVGMZ1ZZhjE23F2XoE4/NgMkyfem8nUj3B3KLsDSmTD2CrZx
	 1zJfkEi2UW4hpXzoayInfWZowRlAHIRcUj6eM0UXtxWHfFBFlbL3/b11povVSuTBql
	 1e0W+w+hDqhng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A742DEB64DD
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 10:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169123038867.3884.11996587104252626120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25650048bc842796dbafd6f080d1389d04c9030c73b2fdc01f7b08a74610925
Date: Sat, 05 Aug 2023 10:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691230388
