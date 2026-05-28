Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0323E00B4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779968554; cv=none; b=mcxuNnTTO9UtE854H5Ep19VL3suREU/NzZGb3nwZIylSWTx+jMu3je5TPSFg77aDBjp6OMR4uVf9nmWHLO8D4GHQgz3aJ94zvBWCd4VhMZ1VbetOLKIbDhoUN64o9RHxk/fABfl+XKPT+mB1qZJKdgI2dOYwJJJQOBPGgM4ZYt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779968554; c=relaxed/simple;
	bh=0G1tGj3nkW2lHDeNvQB8EZe9vhMnuuC7l6BLxIdJuE0=;
	h=To:Subject:From:Message-Id:Date; b=OIjmbvRtngQTPpZgbhtYiRNzXxY07oAvmgItfhCCkagU3F/MI+9fi9kTZUoeYvW8ygMCT97l1b+r38RzcC/Wfvnwu+edMF3FMRy5q5xHauzJVap8f7QhRVXrdf/HFE8dBUW+eYDpm8GAYd+5y5CJMD9TG5xDzimEETNsHjnqK00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkwKoaS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkwKoaS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF37BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779968553;
	bh=0G1tGj3nkW2lHDeNvQB8EZe9vhMnuuC7l6BLxIdJuE0=;
	h=To:Subject:From:Date:From;
	b=jkwKoaS4wBq6KotrBnN64GHBEgeGcFfiF+PvXG+dCGOK9KBhWBaKUKSpBDsSBtb9a
	 Zhv7Ucx3e39bmYV3Nzd7D4DL0URLNwDOXDDSJpLWxEmi0jC++lmQLQfG+TMGYR+g6C
	 rXedYMZBq4LJga3f5dmip4YgsFegy9Pf21wRisXGsvkgapNDAqvPiV/3Ahgjn23gU8
	 un4bE7qwGEwXtv8GrjIDcR8A+Lz5QDw81mFt7REWarzvnbfC4j00iYsRcEXffBf3jP
	 UFlChwJrjmO8LuHYqPWxN2kPb0vTBrUg89Ualn3AEVLabigUqUoLv38m3YPRoNoL8Z
	 hDS3MIRdWG+gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B90CD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996855368.13554.9601214362277742681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6708db440978fc0ed7412319bfcb05ec1a7f0f93f80f7b535ad47186849e5af7
Date: Thu, 28 May 2026 11:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779968553
