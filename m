Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3972E29B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 12:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68DCC433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 12:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677760565;
	bh=6uYQtNOou1eX8QhGUoBF8P9FhUIwMFMAG18cyArdSDI=;
	h=To:Subject:From:Date:From;
	b=Faj1BDGA9Q8alfLAFwpPFR/OOIj+ZUdiqCQhCDHETSgjQBtcAAkjriQnHWk9rAm1m
	 3XlI801Fk+LRwArxL0jpi9qP9c6lUU6nxE+qBKrP9urdK4e5wAZB9fHfB8Hct+bCTO
	 5hyH1RXd+VTvS/U9CPnOmHtMLjafAQIXPmCvDc8LHJKJcea3+lyuokUdPPiYGgo4lI
	 5IvbG0wVFinxZop3DZQGqkVtSTNOz6bs64DycmwScxcdDxcOjj05J1T6c16syMBcox
	 pOrgnJ7PgNiHmDkP8aOBQD7Ytrkse/567XtFjINUc0vdqDTdo/3QPtiGNgUuo30czT
	 iSlSKxwAL7UAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7EBC6FA8E
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 12:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167776056576.1546.11741528763964656489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab6160ee5cb2ad8866449084c3a87cb780f270d792bb1e6b24b71ce2954967e
Date: Thu, 02 Mar 2023 12:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677760565
