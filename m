Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D125A23A6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 726DFC433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669362054;
	bh=9kKCL4LSfNBoS42Xf1WEuM2rZBZ5ow6rBLI2aNec8Yo=;
	h=To:Subject:From:Date:From;
	b=DHOvaU4w8RoIpL3HMe7uUVT2qOuFnOhP0RpiGZ6O1uYksoLtZbHREjxkkrN8Sd6Nc
	 e/mLAvn4T325HYvkzH9mX0S+wAsZFyycmlXNsmqsgT1J7PT9y4As4hwzQ/ojoQEtvv
	 pcHXlZUJ+SCqursjXp7hWgdU4UKkQvnSC0ASNayVpCeTJ8qf0ImqdhEMuTJMPx7zwA
	 YuidZ2v2dKH4tcZ7crhHofZ0FHjeddQB786TwaWZc6N8bAlA+5k2oio2GOb0/bpS0t
	 PZxB3qMjitIk9Sv4JgPXfgBAQHxs/VVUtD1lMc0tMc29i4gG0zSnNcgAVPSYzOzqpT
	 4BxDHNPWjQSPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560D6C433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166936205434.7959.14422403428992360762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb2f74925d39aad1d4dff02e348cc83e24974dd4c5bd89ec156da48d41e5b32
Date: Fri, 25 Nov 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669362054
