Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3CD18BE7
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CAF8C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667922654;
	bh=qlqNay2uYd/POHmxolqZZusOE0Pi+xFLRVL1o1rzinw=;
	h=To:Subject:From:Date:From;
	b=DeV7ILtfKOq0xigRci+lQREFfZ+FyZUPgLsJsexai21acacx4+KrcjOqWcbXsuFau
	 diLTj/M5j/5EOd8f4Mv+C+11F/5Farocl4C3disgT7FEFVShIhBE5uTnRW6pz/AJbH
	 E+c5ic2oZJFgIZyYZotfbkT3YxI2TzN4fM78qYmZ8K45PhX1AhFCyPQiI15biU910B
	 fTnEuwMjdlExu79QMW6k6aSsM0yfZR3J1iw+a7YP7eZ0qYskiL3btzE6kALXhlMh2i
	 SA7vqN71hzqURJ21fqw2DiuxsGQwRLuXOzpxTbI4vWdltpY3NOjnsffSNGLvyUt3j9
	 9BgtqI0xrT4jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53177C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166792265433.11121.2002983629038400209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 780aa8d832ae95dacdb246fa26bd884e34fa7dd596fb72de8f9e1d9eae924ed2
Date: Tue, 08 Nov 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667922654
