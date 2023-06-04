Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC4E5FC17
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 19:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDEC3C433D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 19:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685908146;
	bh=h/IQbAvmT8G2oW3Z7tvt2fdPW72OVnkuCj4h8TAgfro=;
	h=To:Subject:From:Date:From;
	b=hE2bddcDD2hRWuXPgBVBpsgEyjIOlc+z+/cBN7ot7AGax8jw0T8V1uWGRjm4oCCUd
	 K/K7vpFPCebWQZY8uhq/Zm9gqAZT07f+HmXXlvUDWOMz8Dv3c9XOQUs2YE1nYhGTcP
	 bSblrRkPEmH3xegxytiYAj20mKW70XFektaH4PsxtKsiKXsHJbGRRoWZdYq/XcTf+5
	 SJa8kB740Zmi4/JcsUxupxC788ENqzQonWQ8Y2H1uh6IFipqcDuhdFf/4fThxMjfRF
	 HBEYkYPu3iBnEOxeJLmk1Bz/VpZ4wgDQ58Wot1pyefpKDleDLVduL25Ch9H7eBewz0
	 S4dmnLjQ5qpCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB462C77B73
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 19:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168590814578.10904.10933075888072789383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ddf6f3a84696987981d1cfcc78ef12805431591059778a02b12979029618aa
Date: Sun, 04 Jun 2023 19:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685908145
