Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2389E30E82B
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779034834; cv=none; b=N8ptZ5kqfY5LVwGtjtiAKRJtcVGmtP8b7qXroHTD3bXa9bCkLSCXIm79U0EKuUBgho25997jewwd4XWErxjcT86Txz4SRryP+T63cuygVHX/wsmH7QwDhki7fhyNeIzX+zXbCMJpWl1vXBphlthgbt/qS6AS18YaNvgI+gFo87w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779034834; c=relaxed/simple;
	bh=MJ9PaeAhYOdG4J++OwD9/5+v5ieQ6jujGRqr4RiEpYk=;
	h=To:Subject:From:Message-Id:Date; b=qGbnck44trLYi6+9fBar2x4MM0D0MjjUxWND4CJFvLyP6Do0Gqt0fLdXbFqdSE9fg9kJ5Miks9iCLyMkhzhQgVJAKc/PGNdZW9lZaJQgnLXTd8UfSt2Hj2fbUoyvEVl2waRB8Cj2RtLqcwAvHam1dDSAzvBVZQ67iM/O2O0nWjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qr8Suy1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qr8Suy1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23B7C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779034833;
	bh=MJ9PaeAhYOdG4J++OwD9/5+v5ieQ6jujGRqr4RiEpYk=;
	h=To:Subject:From:Date:From;
	b=qr8Suy1np+e9brkD1Yp3CLFYb2uaOn5qGojGOmjoL/E5LVT3ezqyWayMpnumgQ1kW
	 2PTfEJpKXRgAj+yJCcMXwuYA/fq8PXLq5PPGP2Cc3AinqrlzD/LuYy1rdlonAX3B//
	 6m7RLFNwLlazy/whk4KuMoV+ZT8EPLdvLCW8xZHz33mVykR2ZS+TPYzPK3eP8mzESX
	 I+krZz+qsSb6HdoOTrk6z0R9NQpyGIBaAElnjgOue2c8rTFpV1aTu74Ym3PboeqW4J
	 U15z4Hjs3WIi8uKCgCY2O4lNl7Mo7TrQpBOZ7L2/6KWwjW00IU/qLAsxARyRe6/9SH
	 3a8gjWyPk9vMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12E4CD4F4A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903483369.16036.16312472559255621872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b8fdd0636ed8694e751a6a0b8cb071ed5add0d11d09606334de4d544cf3ea5
Date: Sun, 17 May 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779034833
