Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271AC7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 11:13:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB41C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 11:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674472385;
	bh=/RzcJ7kIXPa5nJW3ktFjcWYIHNGmM3j25WqcvS1uKEo=;
	h=To:Subject:From:Date:From;
	b=oe/yvXPti5IvJj3vOwXs4/l2s5lJ6gil/3qhPyAE7WDJUjTAsHEoALiwhoKSmrUK/
	 o3KOeAwgyltryeICDqellqYB3mHiVG8RJQbJt1vcCS59DWdSCBHsSj1ngsLvtOjBK0
	 91feH0WKIVkyxNAGOTbUKhUj/qu+wWMXwyomwe4Sd8H0FNEAVcUaf0At++nFGMcp5s
	 RXQIDHAPVMMZQaWby4eSFmMWjtqf7hg5u3dOBOuJjwKp09M0DBhmPi826RFPQUYhFT
	 GinRiB37uQAqBY/6ELOyusqcRuOGpLY1wCjTW/n5wFHWZFHiI1osgK+y5jOitZn6Mu
	 jwDQfnIakVXHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4058C25B50
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 11:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167447238573.5620.2720990275757688124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 127077d33ab685923e635e03bf36855f4ce6bb725d7b0f170de645cee3dff45d
Date: Mon, 23 Jan 2023 11:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674472385
