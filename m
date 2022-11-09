Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9734EBF6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A1DC433D7
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668031854;
	bh=ixQAHIIQ6jSXStceoZzfUoXO0mjbWVhlUK0OZGpcgTY=;
	h=To:Subject:From:Date:From;
	b=UWB2LlLsb4CfEl6l4uxmmOnGG6ENxqVcgSUXeskBeu7euE9V5AxPzZh5jQHWk3KCn
	 D64P5H4wPyPOg+xQf18oHMUmVhsnr6RCSfLSqvAVyJuW3b01s7n6ernCleRO2df5aL
	 mIUZunVcgzfbfmNiL/2hldl+ikma87xntGNA4rCccre6iW6Wu90XpX36OqDwwTtqYl
	 GVlUjJM781p/QY9kdVZ2sUho3gb7/2s38jLF3eXILD+y9OPZZkJMT4NiDnq1oJd4vx
	 afWiSlROkQwXzQlAYrIyHfLnsrr0JfIsoic43g3M84dMqA8fxS6p8KQ4i2gBCEhw4u
	 UeVt1ltAyIzcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B318C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166803185436.6129.16435432772372963838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7284514649da354b36177d2b142c821fb821b6920aec5ce01167785e3b469a94
Date: Wed, 09 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668031854
