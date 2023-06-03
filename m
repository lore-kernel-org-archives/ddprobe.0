Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A10AEA0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 08:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DFBC433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 08:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685781485;
	bh=5UcTle5kSqxfnMZtRZY8OixfZOmOcfMihTf5cmvWXqQ=;
	h=To:Subject:From:Date:From;
	b=CyxEItUk2Yq+KLHCraiAwfF1qlPW2v/r1JqK/WZQYauJ8zieYVG1vPZV4a8L8Kl0Y
	 j4jbuCEN2nqpq9dpqIXrsZOg2YIWK8n02fFk4a6HzQb+qZFABO0I8xeP0cyN3Z94pv
	 h+GOr7m5d27llW66wmy2EgUFWHTdazmjPusf9jn4WXxZpcO004J0bxCZpIaQVGSyZp
	 hknhW8iq8x0lHtxTAcrP0Cl7WzuQKBkmcx6OZ0su6sWp3BSvf2tjrX2YPRTyGLevwy
	 09HSo6ZL+zUyPnnLztH1/OVFHAnbeg9r6IkWBiDKMXFP8WCxp3PUPeR9JQB4eQG9eA
	 Xdbj897WBT0VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE23C77B73
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 08:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168578148576.6922.14843683144654093369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5c0f560e88d182ed1fc7086814786bf20d07edeb08614cbf364615c4034df2
Date: Sat, 03 Jun 2023 08:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685781485
