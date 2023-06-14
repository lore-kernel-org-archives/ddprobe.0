Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D2A5154BE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 23:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E7B2C433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 23:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686785229;
	bh=LQId22aeVsJTAFxlb4JrMlNQ5Ufha2YAHAknN9wJpac=;
	h=To:Subject:From:Date:From;
	b=VRNAIOB/brJRr3UWQYDTvcwtIsPtz+qUOf/el6VhFpZByjSFq5+xhLDtYGOpey15H
	 MH4fn/6Zu4jUHyxyQbihLtRWowq+b/jg54D6zajhYNtvzkQszkDvic+EjNwKHROAqI
	 ib5sHJQvYqHKW4A9Rg2g3TfbpZSOK9nwLuLymv21OJl3IB0khA8HeG7mXC2tFqFF+A
	 PINrnUo/h9qYq2r+g1tkgppYVR92aheiRplf5WNZAQUdsYFI5DxY0evjIT+LIKcYdK
	 76jaE8ID1mnODk9lo1IjhdK0B3MuhhkXbZRTZvQpNBmFCG0JnRO+t5ndwvnUn3zgW2
	 Gvns1hH3RaLvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2EABEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 23:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168678522892.28790.18138695090846744366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 709d99a20dac61af90a8913787241fa48b5f8a750e3ee040af09d1e3709e8b63
Date: Wed, 14 Jun 2023 23:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686785228
