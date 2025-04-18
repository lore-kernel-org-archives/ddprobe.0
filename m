Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364F3219A68
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744977594; cv=none; b=mu8f1PiAvycJs/c2I19xbWZMiuU4VvpKHqk7X3bYNFOXGWQvRDIBS3wvkz5vln6IWzk+CQkQONrD2h4SXpNvwhy8pG75o1c/fZuM+uJ092vAvRvzwgvu/B5HIleO96xBpoVz6AHo9i6/Om2WkVvZ3lHzBNhOI4WN3cx4Jq9lnqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744977594; c=relaxed/simple;
	bh=Bg/gRAeUeDyLwxezvd0W9z3BLK5ZxjyJkEoKuaum91s=;
	h=To:Subject:From:Message-Id:Date; b=UdSZpWoi64YDG6vy+isWG6WrNWsYGoUs93EyxitoMKzQU8wg5CFGl2Q9Zhnw5tt+oErdENYnb7Wi2qWBB69kHYrMQRVFvhpt2ddcnZGSC+SR1Fsj3vHmFkiDexA28XrjXXw+4sO0V/q+HMMzzJjhNaYDQLYFQE4uvn88Nh+L/G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9pjiXUM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9pjiXUM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE80C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744977593;
	bh=Bg/gRAeUeDyLwxezvd0W9z3BLK5ZxjyJkEoKuaum91s=;
	h=To:Subject:From:Date:From;
	b=r9pjiXUM/hRIUXcEf9x8skorIhCNCFsNZtl/v3Pl2RSKyIY9h2sNls5gCEWR9oQkO
	 9xpyHmyGPWS26gSKDkz+AG0qi5Lh8bBdCFJUiSEgpFIa1uODeWa2PFk3Di/YRa8QUU
	 6a5otToU8p+8WpEO94zDpQPGVEQxF49YccWaEiOX9ZyfU/5HElN0qmoo/QF/WEFUuK
	 HniXWfgytmSReZHgMY2XWGN/ZTroVD+rGy6Cr0dpGtNEr7qfZtsHLyRXSA1nGcQV6S
	 JNdXfNT7K+pUXziJvezWzySL/wsIK5W/f6323i75sSqNFsxn5LBrW8HoEe71eP7vkd
	 ZXFOyHoNgHTug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97443C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497759359.24654.10931346833570629862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b701029d4a29b336bb820205fad346b979952a8493b1ade30eeb62f34bab555c
Date: Fri, 18 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744977593
