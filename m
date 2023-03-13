Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2421F15A6
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 00:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56BBC433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 00:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678669025;
	bh=789/MN/h7I9iQ1AgmZb9Mj3EJANz0Q9NoNJGCg5b5yg=;
	h=To:Subject:From:Date:From;
	b=RuTJ278UGWa4qn2awJ3zFWRCgxhkEhUeuDYcULj1hkvQ+EujqQgFaIvmfR2qwuo8F
	 OSsrAjqdjWbUpbChMxB1V5pqcRQ9W4XFDsS2ytqak6MJuC1fcAcuwHRIT0jHmE0jZa
	 Y0Axg+aiQt6K0BhwDQGcbp2t+E28o8FYObiaS5pwjUjRthvXMNQ+PRZPBTMK/sxkP4
	 wwLBEif4sQxiU0cC7HUBXLged6byWI/D4oEk3y/ekogvbgGnFdVtqyjvm8y5+xyCv7
	 +zHgq3grnC85mgEfBt6A/Ei+dE9NonPnGypIhes/KWC90zqLvD/JasYtON7nvjZSQf
	 TSqUMYs5BtFzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB48FC6FD19
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 00:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167866902575.2123.7661052346970071619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af3d921bba877e9960a569e583bd6f665f7a8338e93d176fa4ddd3989a47fe54
Date: Mon, 13 Mar 2023 00:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678669025
