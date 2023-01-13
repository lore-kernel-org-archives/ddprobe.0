Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00EFFBA41
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A501BC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673647887;
	bh=cp6g/531tjzDmzTXCO0IVJPu2pHdhAEk/AewqIptEHU=;
	h=To:Subject:From:Date:From;
	b=DJGTSwous6hryAvPDq6YAJVNnIRbNdA5e3/xmxDDj2yuVqZ6CAueyQGiJrdGyPwQw
	 5BFJgTrKfjXBLCzknG3709nfmN41xJ6HP5J4tWw4FCCpRQDHozee/rG4hOxXlAWJ1a
	 5iPjnP+XhJQ81cOfks4BtHbLQhwjTBtgJfBqUBWGsyDXFVg/RndJOSfNwKHX9Hi/fo
	 DHgFpsU/yQ42aSJ6uHjeU9CNwSPBn19k6seOtHxuSH639TpEYwa2lQceTm3/erwSnv
	 tyLPeRSA0Dwn3xDFZfOl53Ek8VTtOCrrHilqG2w5ms3wE5chmburhY3rSCiGCpisEe
	 7PE8bX1yz67/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 872CDC6379F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167364788754.23712.17435177417589579340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e97032c9006688e7d0754d98605ec0018dc4e923530374a239627ef216d131
Date: Fri, 13 Jan 2023 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673647887
