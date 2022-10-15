Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8F5C2904
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B91C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665867053;
	bh=IgaMOQFAXeAkahembIpCepB6bMrroW2HkgCY8iorlC0=;
	h=To:Subject:From:Date:From;
	b=qgCwEkR0yI1BkTtnrtcpsjqFAQa/J8lbG82E9fHVOgRsS8u3chcklj7rbMPEutStK
	 53McxvI/+er3AdBzYnIaOQhfjKaPHa+xcBNFmQjrG95bfiKmPHGN5QTWeziGG7VfUt
	 0iHZ1gbfdHmrlZVPKKQ5/jYT4+8ohxIzotiy87abHuzhKkY2pGeTe8JaUelZ9KIWnE
	 oh6YPehuzcFvxjoYcYL7K7OHfc8YmZ6GAMfycdlGlFYsn9FH0y5nVyJ/rLOGWHhxfL
	 0BmUpWW2VfeLERnnn3p73CaOQp6qmhOQK7rTyLrQNTHeCQwpiRs+4Mk0rRqJof1/Pt
	 cg4tmr7+wV0HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5753AC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166586705333.5368.3865961498276571175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1298ee1b11dd91de07db9e4d3ae2d9c73ab08878bb3c3eac1f7c514797f87ada
Date: Sat, 15 Oct 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665867053
