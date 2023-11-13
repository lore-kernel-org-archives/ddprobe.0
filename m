Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1979618645
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbbvoqE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C96BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699867096;
	bh=sjJEWBPCPGlOq3qQyzkHgTL2fWPpQfZDsXzR1z1nR2E=;
	h=To:Subject:From:Date:From;
	b=GbbvoqE+KkewZO5cduhhFZRWCvBtfMa2/CWb95WAxBk6sYLzdeW5sLHGVEUJZKmVJ
	 X2JGexKKLzlwKCAZJoYOOtA3sMeUBJxKsSkzVxLfoBtzahtEnnzewSPULB6EmUCXfk
	 YibCSng6S3qNcGumBfvwbBoiNJ2wXFeTLH1//Itt3XRkk8QZd2D6QVG1GJtki+7RLA
	 Ja/Zx+1xaMxlUlMj/MCTrSELrT9HEVVS5KyVZy20aSpAteBHo+JJVFgP4aL3jy8l0U
	 umPX3OuE+9Bwhb31P/8lMLIkQw3ZVcWQRMHxTrOUZSDgYgSv+6WpMh4KtQo3sgzuuU
	 fa1Z5zHBjbEUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E93DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169986709644.11207.1925896769754606541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f869a76872bc44874822c8c8e1341bcc3f47e18472965c3b3d1f70cd4b754af3
Date: Mon, 13 Nov 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699867096
