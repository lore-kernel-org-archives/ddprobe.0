Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87AB1857
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E0F3C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666064453;
	bh=bfp0YwYlBuO60DrMgUYQlcHHLz/QrWWAHv+90Blsb8A=;
	h=To:Subject:From:Date:From;
	b=WiCgt9/y7PJ8l1AAdYeAIByEkY+O+TP+J2G+QLq57uk/BgZ72eRX7842uDvXIMnNB
	 kWApYBKDFK92CawdFFIHVNguDcVFBct+2d78FZc13EgxNZpe09IubVqk0n1MsPXE4i
	 CadcuAaE2jMvJVPizsjnOZ5YCFRy0XKgJBmAw4FWmevJPxWmfkdvD8cBeMovgLREEX
	 AutRwJQBa0HBI3bdl7Nls7k4muRe4WOkKWN1Q8DEvBP6Xq013pUZubTzvlQnbIKdjY
	 0HabRVV6FE4iqdkwsgZ7qn9/dE/dvkDZBrI9TC7CutREXeuH6pgiigqQTW9SW5wgic
	 fpJd8cxKdoxVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546DAC4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166606445333.13369.8107091016510269453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f59a7f92bb429f85446ed469c3e8e724b5394c5cfdd7c445c6f5b5c60ce9aa6
Date: Tue, 18 Oct 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666064453
