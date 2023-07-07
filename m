Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A9E8A4E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 20:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 094D7C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 20:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688763429;
	bh=yg7jFuLSNAyDAO/3qMGqRKB79eJeJT8ui7SI8YdDJYE=;
	h=To:Subject:From:Date:From;
	b=owmFZWyuKGfY140bFWlW55GNaZyYTdFy7mRDrVGzUoXanrfGvT6Y/4+BYFcIFMgOO
	 QkLB2hLOMdi1/jNRESeyMqAP7X20uxE2Jd4mPZOazoWHs722v/QITIu/Y+zQ1ig2m8
	 sxyq0yF4F4D8fu3ErL7rLPNqkdcmyB3o4rxGbZ33FVuTCJhJAVTlzWFhkNT0qIpxWf
	 jp7wPV7gebZ7Dt5q2mqLHEYLJ7vdk69f+m39UHhhyjl1mjYiJp48kKc3pf5vA4jUBR
	 zlrJfEK9S0TUj07oj/yMe+Z9btTlKir2BjwL8OL0cBytnI5qTXkEIm676MEb7eEuzD
	 Sd0ZjH4W8d+8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2857EB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 20:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168876342884.6624.6056060442456227763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d331c2a7104cc36ff06f9f3d17b1991c0f78b94190eeca840241d76a056226c3
Date: Fri, 07 Jul 2023 20:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688763428
