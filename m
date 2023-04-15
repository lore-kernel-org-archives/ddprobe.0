Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38ABEEA3
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 07:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E20B8C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 07:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681542185;
	bh=+/puxEv0Z8KFuQIxbnsvEih7pWmVuzq/eQmxxsXBDyM=;
	h=To:Subject:From:Date:From;
	b=t9S0ml0gwHR3pMg7U1g9zN73kenO6hozhQ4PfL/C6mWQRk+8vGVYtzqGvqS8NDlGA
	 KWYlfSelRhIZAX67OS1+BWSYnwh4e/ma9xMSc0eNb7bE+c4q1SLQdfT51YUY1tg5jq
	 gqghjK6FB8R6gpn+/3rSDbPqvgMH5wBGovVtUpvLAtw16mj082eR3631YbZ0lMBXRH
	 Sq+sntwO43Kq7F8CBfGNUiZsioey1FrwQGViOBK62F0Eo9V0Kso+y+upI6/3p0af+o
	 m0335VRcVjyMjpB77mO4yfEq40HZXaWkDAOBbFSRX90Ti3uVHIziCgVwLds4UgazWv
	 E1hwkFGiVTlFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB577C77B71
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 07:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168154218582.22745.9647856192868939148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d97155cbaa48e1768732f4193a20fba477c7055723132a10285be51f1abaf6d
Date: Sat, 15 Apr 2023 07:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681542185
