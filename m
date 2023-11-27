Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193CE3066D
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmPM4XBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE47C433C9
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701094696;
	bh=sjgAX1Z9UFR0F01zu0icauhFFGTgk5Y/Fo0UlH1jmms=;
	h=To:Subject:From:Date:From;
	b=pmPM4XBhjWrge83511sICKX+jIaEOEgV6K4sHXFTqkn3A6hulbl36Si2TWaNy0bHO
	 di10cwWnk40kUMg7L0CTBeQd+yP1NkdlM0QxPCYUJh0ya5vnYrFhVSMPhc+d5J2W1M
	 LmEkMw+egQ6AIbHCI4WG93M3e6fjO/DsLxpD7R9aW2cYKevyYqtdhHduSzyyr8CJzA
	 4E9vkB8igHWUa9DcsRCskZeD/M0YMvEWU2JW+Znq6TCKt7TswIunfwUum67Z55yWDh
	 nQfdaVRWLmWLW3+Z/Qk7ASPJL4L2OfyVWzfOGz/WD2okguRBbsA1J27S0cFND6GWKb
	 rgSx2riJLzrMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6089AC4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170109469638.13225.3989727494342908422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f8868c3180224a5b51f4f5b305bac78707c42aa9091fde5174e97888868e16
Date: Mon, 27 Nov 2023 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701094696
