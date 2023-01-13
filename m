Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9FA036C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80CC1C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673571687;
	bh=E1dCR0Vod3fsm78T53tJhUQRQIrSfx/G0S8jrdugTwM=;
	h=To:Subject:From:Date:From;
	b=d+PZR5aQQgRy0tmj0MH0b/uXpOflBfeUvX87UQ00/oGH/UBkJIpEoNYinyZH/dHnc
	 nM4vn8T11xKz9F4uxKhTZnUp8h2ZmSNHfA3vtCRLkX7IgjFDDBTgAymh9qMnhttCE6
	 jSvI0DZoBmGDse5xTNqJY24yIzbMREVY4QF4AuHJQfcEuPOOm3+bwsa233GnAkXYkO
	 SitepzM9j78igc2eUQKJno1ChBWkQVxnBLk1JnDRZGC5h+D0fp3F1h38FJyFkjiWxZ
	 fhyDnCqXOjoyIAIfPr3v+0eMXomhOn5ZcntdvFtQMF+KZrElSp8eQYOoqZPQXXrBd4
	 wEJRJXUjzIvqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 647F9C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167357168740.5268.12698890612077390601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded835a3a9fb833f0f881a69064c57ea84740ef871c947a2cd030e4862b1ca90
Date: Fri, 13 Jan 2023 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673571687
