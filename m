Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08EC51EA85
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CacdI7yy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7880DC433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702941496;
	bh=6K0Z/Pk+6DB3FXrXCSK09Pn2rWhteppyt5gBerH2NIQ=;
	h=To:Subject:From:Date:From;
	b=CacdI7yyh2rQoQnZ6TeImdgkFx97nv2j7OMaPWAC4585TA21p41eu2UZ5DXPaEqA8
	 t1UiMWCK0Ut59T15zhAKey2k6b05lvF/Z2f5yDnR6MiiLRox2dJVYvpmUEO3r/3J+S
	 GV+BN1i/iQnw5Aea+H7WPCL/LwMqecPlGE6qA5s0rQMXgoZtW6c4Wv1/M6yugDFYUN
	 mPJ+Da1dqX8PJSLQjYR7DDDs39i1qnBWLgJenrrUndSxjJqcR+q4h39yyQvxlAfyGf
	 /fq188AGPg83XNf0XgZAoTXI+Q05dg8dCj9f4WlmZ3gkG5iwowseHDFJBUSi7wTkST
	 LpwZp0GW4raVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FFD0C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170294149638.28780.1116895683112100743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db78c0bf44a0d35e453accfb9d9d063938b80f43a39c7f8c597af637e34fb21
Date: Mon, 18 Dec 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702941496
