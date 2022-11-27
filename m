Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F00EB17
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75EA7C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669510854;
	bh=AJ3fbqvpVsoMpIvVbqEgV+nlSJvXuWt9Kj4DkzGLhfQ=;
	h=To:Subject:From:Date:From;
	b=WRSjurqBCZceBTCYAguS+o7yxTezk7wORhyKd4uyTrcQqh/Bb5/81YmzGzzH846Q7
	 m7nXfa38KUmsYvR531If6p97FhRa0Cv//To8IEK+UIci+XBotdBI0o8WC9sm/mqeg6
	 gVqNIvVK5y+TdmPVYc0vXfuQpBYf/s8gTS8OmHb+QUZjzYE6cdxFwJOjXmmQz5QuL1
	 PgOjf+UrkJZdQyRopq+4SZGmMfxKAeoyuCXGKOXWvF7FklF+7Yny6pibcib5ppvZGg
	 9qI+1LsJycKmMibJMAlsW8TnghgtkGNRdygwAmq2NeKtES2GZIswy4seY1vwJxBbrs
	 dO6sjkaytmlrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58D3CC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951085432.9846.16716375766060939148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6694893a71ebb3097fbfa5ffa0b550ec626a8c1e70f646546e6ffaf2cb1f12
Date: Sun, 27 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669510854
