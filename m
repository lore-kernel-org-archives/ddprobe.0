Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF73209F4E
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742456394; cv=none; b=oocRLZNY33KW5XKXx9wGnp1XOt6GJ+sjnoNxy2ntmlgNKJ7W8dpbcRFcPHT6HHemgsvoVo0Vlmv9k6nduIyOb9gM2pWvPnHC6Yiczc77tNjjEJpim9biRX4sLhw+ojFMjF8k/MSx457HdemgXiVRzKanCRIfSOhEcMKjyS949sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742456394; c=relaxed/simple;
	bh=+h0oDjYEZU+lHuL7x7y4WMntDaEP7D4OuoJqlfjgSMM=;
	h=To:Subject:From:Message-Id:Date; b=peI9e3MveyX6RZmuB8vQo8ZTpCwVrFvqa0YFrg9orEcrbQSTp/etjf6PnBVujwNlD8KbvYAl/zB9sdHxLkOCelw5CuPtFvZQ5w9eUFjrAxzbzHSRwliIc8fh8bI25h4k+hOZnvsc9Rz1NZ74VF+N15ycGK019SAbIiVhfV+btxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENfrCFpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENfrCFpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACC3C4CEEC
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742456393;
	bh=+h0oDjYEZU+lHuL7x7y4WMntDaEP7D4OuoJqlfjgSMM=;
	h=To:Subject:From:Date:From;
	b=ENfrCFpUyTTSHQ+Fw54C+bYeWSsacw4k93iuoa6pr5lefTEHhn040GID2nSQ8Doj7
	 //gtZPw0+mxSK2Fb7abNg443CO43U+bQrkkj1hhOmcAb+1oDfTm6EXCGlcH8IskZMB
	 yQV5yMQ7KGMcSSziI8aMRx9WIBYyuk8tZyLbcWqOefPZ1rOI/1EIubIr2L+ydpQrq3
	 +cEbj/LXgPklM51Hs5a6BVLU6gkYg5BDkAyjlHmh+ZixZfZLK0n+WyFQxWDNHKILFD
	 Xwh2r+b52x3Lc8n4TXUms13QN6RrcvqYaGgUXTdfiSmzvsk6KBl7H/uFK+NhZ6C/NY
	 6NSIx1G/DZ1+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E843C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174245639363.7068.14962857529474713602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1268ae79fb6c7800de3f4c8987ab6f6aa59b08fcaa790e9b2f42d67855d8ba
Date: Thu, 20 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742456393
