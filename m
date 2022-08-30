Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCCAA3200
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 722D7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661864453;
	bh=DgmO7kX8zcN/EOKGn6G4FiSbI5c2zYlIwsu5U1YbHZ4=;
	h=To:Subject:From:Date:From;
	b=YPQw3U4I/BMDK1p50AwMhEZv5vluU4h9ibvJX8K7j9N2ehglPRwzgTsiv//u/BTAL
	 Wk+CFCWGSt/BE7d2d0vqWDBgT1GFxTxSfMqvRledHAPRQVtYAg5V/zmTeEokyUMmd/
	 zJkS7KknCFMZcN6jlT26kf4HFqsnplhvJzw2cdNuSCmQgoA5CXOsejNml7GQNMj1W6
	 A+BazyN//W9/y/aUqvyCz97NUGDn3WsazjcQIPPL7YIwtTAgA23PJKqAW0e35YEied
	 jdbB0V9mNJ6Gw/qXynUINYwM7OaSdgnAQeSgibYgeGA+Bxxhya5jfBqwcbNwF1zVUE
	 y1suCkywtfm7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59092ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166186445335.29566.16803382564814263418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08cd7082ba972bb66cb3986474000e28753e1c3456c358e3f95a98b86f0bff7c
Date: Tue, 30 Aug 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661864453
