Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A274416
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIu+Gef5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83362C433C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700804896;
	bh=gJwdNXr8tQFsGr5ROB1SSWsdB9rXXa1vCx7ADVuRrhg=;
	h=To:Subject:From:Date:From;
	b=uIu+Gef57y4fNiFzR3mJieNZIXc7meHz6AYQbSX3nxRg3aDPlTAG/8eUmflO1jd2R
	 ms6VWxLtKeffFoELBQXaGMSmIFDJRFrO/jKwAv3xt9AwwmF5+3xdwWIdC3OqfhILgo
	 UCS+tNrNrsphqWqp7UJQFOhNAn5bMRiI8n5PUO6vXAG0OijdxNYXfmoL43rCLX2WOx
	 HpZawBEEkTSWtT8AIYoVfi00eigh6dEM6kTBZvmeLJ1lLesX0nkWbm4vks2OC9ArTq
	 6XKz3K9Q4a35aliX68jSYbZ6ER92c+0r703c8IafY2rFJCTaBwDzfBU9SIzuJIttQG
	 g+wKuyqRFOE3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68C84C61D97
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170080489639.29515.10520131448993961118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f6236bbb40a2e9753fa62f8a5707d11745131a799d8f94fe68539c64718a1e
Date: Fri, 24 Nov 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700804896
