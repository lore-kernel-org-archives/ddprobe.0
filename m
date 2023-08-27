Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C33A2115
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 09:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA439C433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 09:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693128248;
	bh=X0Udwgp8M97m3mWBYEkLx8FnkugL/assdDj4uqZKs08=;
	h=To:Subject:From:Date:From;
	b=ePsb34nbzzqXc378LkH9Anoiuc9mqqiScPY2e+Wos1Tu9KqN5rCkzopfkTHJRRLtr
	 fYia0Gj/7HQAB0jqvAxezYvvFArzHCokkm6QHQSxhy30HjHw9l0GYlLfND4VauSM0O
	 QgxxRTyhESvairuiVdtSXWMIcxNnt9EGYxwr2HRCnmb0wyclQktcMoQ5opBGMkyjW+
	 qxCmML7SJv7Vuc0Uv2LlNRR7F4IH3RTEiaxoeLKS0guK6hbYTmA6xE68nJaadWq1r/
	 p/79kcnZy0ycI482180jAAPRg+nIoQ8pF223fbFZAkUZhUzKYVQN7PwYya/z4PNvPg
	 B8VEUTP7ypmsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA8DC83F01
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 09:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169312824871.29929.17178529043114179289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a466e135b158824e77629901640416105d9c13aae439925811e6fccee206d503
Date: Sun, 27 Aug 2023 09:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693128248
