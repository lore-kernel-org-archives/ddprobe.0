Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8FCC2F5
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 15:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E841AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 15:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684508885;
	bh=BBXcirjwy2B2LaV+PAtATOHgnpMxLPUu6F0wHRUa048=;
	h=To:Subject:From:Date:From;
	b=Fmwa7AC4zt3te13MLUviLw9uHfUnCFa/betr8eI12QHqBwhslG3fQ7leSL3+JAWWw
	 0g5cV2rjZojR5g5lWpFZM4xwApwOlH5uNDSlpg65ubQ6MNMeKq1AnwtbJKUN+I+Yc5
	 7bJ/ddRIjUSvDtZlImkzJjpO5SBkQCKQn1AkUki4RmjC9f/WA3CDnGMSFZ2aQdeX6R
	 H3rgQV2otOy7BFfoo0tzIEJ5GtZYIfM9yHjVb55c8/y55pQhF+fxVuDAUwMaVhITTs
	 fnKwdUCzuhmtDpk3WdfoOZhJhvqueWJOFUxxlpxNUzYJqOJPRIUknuz4+46tEu9Kxl
	 /kbKoHtfG7Wfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57D1C77B75
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 15:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168450888579.3030.7095777401771075578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486cb1962bbd9c6bfe755bf4562d3a52f25abe6967e2cb4d5dd9282525abdf16
Date: Fri, 19 May 2023 15:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684508885
