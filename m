Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63DE23A2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D16C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671781287;
	bh=U0/gQwJQb0jhsmNE20BZaMvh9JzlBYbn8V94P4KXVx8=;
	h=To:Subject:From:Date:From;
	b=qWmNs8rl6yRmrHWMe4e+3KpLMYCcXMlMza/UjVUWxuRNe2XSxbjbhTTUxgwqEEzKl
	 aLLzy5Jr8LHH7KgEif8mW5XCWrc01rZx7sDkTLI7enHRKTyWnekQ4W0joXwbeiio1k
	 wQ+dlSKIiRrX4CX8AX8uU4snmTAPpsrGWCP3qOg6ZreGPIwJSDEpSm3C2Ep3stpUKD
	 DENpgnz0lgAfztXHi9u6zq/FUlEBL2Y3prG05WNwAphyTzQb4VvF5AkDcDGaMeXN6X
	 /FFl+HwesJCnqIAgdVnjsYKKHz2oDpjGRMi847F/+y357ALQqNdw9vVj6y5OsgxR/I
	 uMfflKZtSK5pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 627BAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167178128739.17477.8932638896863144437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78c784fe65bcfa04714f869a826d59ece765ae4b79579d3b0edb8bc89742585
Date: Fri, 23 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671781287
