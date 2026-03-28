Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A881DDC3F
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774725894; cv=none; b=J/txwcucsCg7QUH/tIkAPFY6dvjRbMXMMxahWPs2p2aj9VNM9Ph2xjJkwtq9XEGlgk4R2G8oO3B9Y5Ic1aBcllfpWSOCnN1MQQ+MW9RPHkxwn6sCA0G1rAB7LJWnmIL1uqdS8bz0nfyapLXvU9S2oXr+6FJqqG3T+FzOo1Npghc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774725894; c=relaxed/simple;
	bh=7vwUPQvXMEFJ+BoxZj/B4jTfrlayBMBqrToJf2hQ+Uo=;
	h=To:Subject:From:Message-Id:Date; b=GjHiUWZbrIj0sjIzrZ5GLh6KeePSvnG1RM3n6KPGItVPsOXTtnzCerN0oPj8ww2OFJOhd5cGpwd4R19G7OudyDZ+KZq2VJjOPxv9pgn38LHJ3m7K9QiwGdEgsIzS6gQK0NLtW8tS+1SI8A5LFbPRcvq7LDtM4mEVu5iP3o/dHGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiO3J00f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiO3J00f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DE2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774725893;
	bh=7vwUPQvXMEFJ+BoxZj/B4jTfrlayBMBqrToJf2hQ+Uo=;
	h=To:Subject:From:Date:From;
	b=EiO3J00fo9E0lProAi0Ies/ChNASCB+zgbObVpIqSXsREoj2ft0ZbgOh4ztzwW02r
	 UfM0VaH/P1yBleNq5OCsksC29U1vGBYmzRB/8XyhjUwkrRgOgknuTciv2afUoPOxSj
	 RaA7M5Iwn9Z0AChGOpbopJ5Ak7qFUUpqwArhH+bsgUCOHrnVvOYMgKx55T5w3p0y5E
	 j+ks/ngiAuQ4ZmaqySv/hF1DEH38jMBRw4KZK2drP2YJdU19nbi+WDzVc/XopvvLQd
	 j81w2t15AMNMC5a0uPNWfXtfEGR5vGzHP9cLTb7lHGK300eXXuZYpcPYVgGfXS1Ajf
	 YGCKrhG8x/Jmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939B710BA423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472589358.26634.4079900478817252664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095dc36abbdc90c41c777f16d59fcd82366ccb96ceb5002e5cb13e4c7c163be2
Date: Sat, 28 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774725893
