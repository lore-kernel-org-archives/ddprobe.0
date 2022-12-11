Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E720C186F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85EE2C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670758287;
	bh=hTP2wXgTf4479UOocRa1Hz690YTPYMXvzdP+y5KKAS8=;
	h=To:Subject:From:Date:From;
	b=WzXogN8VxPlw7pP7dhNwCHd7sXSHWK7u6j5rNYQa9Q5YaGL5FZNVM597ZsRoxMz0R
	 p47qQUbjbcuQ8g+MAYZjzAryqFtwuxXxPQXsDFTXUDD1Kl6PnNnizxJKJhgufLbcx7
	 ezZQWLKkDV1aG3wDaLtozBP2OoY4RuAvYvZS0OIE8xBs9z63AYY1vRnqYZ9+LzrSSZ
	 Xn6+5x2j5kLZ1dr/QY44KHkgxRZ7pag8PamODE70bEfe6gQohHKqKptJKJ5BQx60DY
	 H3g2eg/6PYFML/N89m+803cSMWWmbwTMMPf3cnGFbGmLqpfrtz3NVVvfo8MorVXM7D
	 PAJn2QZG6XEAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69906C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167075828740.32662.6398557734393312163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 224583028bd0913ae765760dffe02662dd8d918c3fa103ac78bebfbc1298785a
Date: Sun, 11 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670758287
