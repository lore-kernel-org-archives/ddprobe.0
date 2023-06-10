Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A21E2C8F6
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 20:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1394CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 20:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686427926;
	bh=3fkVd6jKl8dHB/F7AScN2j0B9j/uRkxWHS2m+oiX6bQ=;
	h=To:Subject:From:Date:From;
	b=LSKnajYSXSGulI2j/7Qh3kBqJJPpGSriADjv967OQ21JdPY9/nIHGIZBRoNHlaOR1
	 fDTV2WHviD2jPotbcFy6wNtO+lRlA3EO+lVgckvPnwhtWPkHqzM7OWROei8Z8uYcyY
	 /j/Y5jhRMc4IHHBxwYtqkZ75kXHE4NPqzeE0C3mEzPmqb4pMsdPDif1WeuDtBfO6Ga
	 FqsH21bvEnv+P7nhM2c2SKBw6dDUJKcQHq0q/uBPXmtEyYgFUPusNS4hyK7XcYFGdH
	 Pxpm//jexVQUwtcNgS8Koikl6dCrzIivErdEUw1Vfjw+yD8seNt2PbMbTYIUOGlfVe
	 9XVsg6eelzSNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDB96C7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 20:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168642792578.6561.14625505190751318954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caaca90aa4552b23690dc5b383add3faf6c20b56cab33b98be1a86652da118b7
Date: Sat, 10 Jun 2023 20:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686427925
