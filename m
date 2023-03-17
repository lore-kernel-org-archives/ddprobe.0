Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B5C374
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 03:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1587C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 03:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679022005;
	bh=IBX7T/pSGRdD6UR5b2TuS0VXT7PJ6mq3w+HD4kJSWZY=;
	h=To:Subject:From:Date:From;
	b=hvyyG86A8yMHDdWbfkBGfVdSHdRTAlFD/keleOEujAJMHtr0R9rnzQwPggoC7qjtP
	 HBOw8/ZAetIOOqIoK1OrJIduDO6u9tA8X77wlcMjMPCWtMhNUznJ1vj5p0TtuEDXKf
	 u3ewe/5k0FKUzb4Typv7dSxFDNymwo9prht9bnh5x2Uy0pUQBiGwPRwnRJ+0FBtW4p
	 I0HaSVumcOqfgBqYFwKOHEh5UDcPx2hZeV9s0hQsjQFBev+jtrHAmEXUT6CtMrvKVv
	 MZPjnp2uR5SGhWA4rrwtkXwBQRIi4RmVOOmaHqztlj2aXy8PpnGgl0wI2+ueEbLu4v
	 flewOd1rXWnAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B55C74A5B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 03:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167902200580.32110.15640179229886792792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f2d78ab966b73407d980de041aff5c15eac90533ba585b547c96d6497b33e45
Date: Fri, 17 Mar 2023 03:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679022005
