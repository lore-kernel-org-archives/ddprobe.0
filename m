Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552C6A927
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744516796; cv=none; b=L4HsizGa7X2MDIRlVeqbJcFblo3y7klDWQgSWg4V/gVLZVrnLJsxRpURaxRbxBNp1EBE4/SbXGIdBpq279w/xImZ0ZDDPBF2mvV6US6MIkh/enb0c0cDxdtxvjmjnKiJXrD5rWYBx8Za81v6Ib0sKJAhrv6AS+giANtmQULzIO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744516796; c=relaxed/simple;
	bh=ZIkMRkloMFj3zBkxnr4Kz5YlRl9BGSxur4uY6og/15Q=;
	h=To:Subject:From:Message-Id:Date; b=ixzbIg/sdH46DzClLusjmC+VyhdF3G9zdMu66+Pd7wIGnqpsfIprDOPHqWnM5fReIX/95kWUWu8m3T/zIrDAmTM1+1TU7ON39nCNxsYDahOj4uPiC+wNbUcFyGgqwjk65UiK+0kpCi3NoCaa7/hZvGFkasmupolFf7unhRV0Lp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2X2trfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2X2trfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B347DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744516793;
	bh=ZIkMRkloMFj3zBkxnr4Kz5YlRl9BGSxur4uY6og/15Q=;
	h=To:Subject:From:Date:From;
	b=J2X2trfcgoNjWP0uBDtLQQ1EieMqrC9pnCzLTC0KgwUSxA8X8n5qd90TLb7Iyjk3J
	 1XxGdyTlWMdr9Pvt+Da+H6BSnnApJ3Bc1+dNykFr7EE9tzo2nyZMupBCfXEWIAki/L
	 fNcFgJfp1V7fE1E9LSdcNaHdf0HgqkqikKjw8wKyT8sM5fTg7mgQH3Spy4Kqemjfpg
	 YsEmq/w/UvDwff4fmfHhMy0O8XI516/0+tgzxVognRxLfiIrUj4PNN7xJLd3757z2q
	 mM7Y9WNwL7DKx6GgRS9pI/lGpoF8dlkXNgxO/CXfrrjuMCwCmeKLfnuIr474/5KENU
	 iS6IPvayD/7Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D5AC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451679360.27029.6085190248293771028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b484e6c32a8e8967f6f65f39d7dbb9d90fb0019f4acfeb4a6146593b2b08c526
Date: Sun, 13 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744516793
