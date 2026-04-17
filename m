Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B0222CBE6
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776434854; cv=none; b=SWah9xdXhsqwTGfRYRDuY15mLrvZiAIHTmgHNrxNK2TufbMm1GQE3ijEFOYechZKYsWCR9b//A9eaWJW15ahEg4j90LV0XSCe47535wwyJEXd3wB2k5e0k2cQsMBddKA+vJy8/uH5skwd4lNJrgwTw7g8eXvZx2QEK0p7C7iH7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776434854; c=relaxed/simple;
	bh=nbh1VW14ZuwgNc0hlOJht/DeTUbqGGZ53A7JDlpzSGA=;
	h=To:Subject:From:Message-Id:Date; b=GGporrwZOgaLGHWW5sp6hIKMGJjbeqUgImj/8jPXeD1GhQTNL8Aj28PUkR1ifRCYU8lLXCaNjPIRVfLw2qM0eKjuIByDbf2ZoR8fBHseeyJPSuhHhRiHi3P9kDnDCAc2f7/H/8Kk1t/Nss2lmm22HRBU68xX6Kdv1h5O2Fab3gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKJBBQbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKJBBQbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7DBDC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776434853;
	bh=nbh1VW14ZuwgNc0hlOJht/DeTUbqGGZ53A7JDlpzSGA=;
	h=To:Subject:From:Date:From;
	b=XKJBBQbDAX8u/g/f6QCPXb8ZD46UY/XG38jW3WEFVPyfHyGefyfOObZxF/Awusn/I
	 oRzCepip2hMOhzbDqPLhn8LCaLBM+NDTG1AeCdLmwxX5Vaf19XSOTmWwKzhhB0Dwks
	 QhVX11qpBdMK5pZF9YtQxKcE13i3/LHaXujKrFz4oIkbH08+qhnVvAY9UOWBsFk3/f
	 h4vVPSbpbH1nuU7/1DbTs3C20rWZganrjbZh5rQcg9nHwx/WHTXxSqu6MO+4EylxMa
	 NWc1CUSBKDTQbXodujgHOY38X2RtoUBE9TiCEZKq12x5wspMUbAqSfYHSmgOzLmNbG
	 BtOyxNNQ9AZ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6422F436A8
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643485373.13284.4288610843041434778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ab4768e17846a8a8ff6520596cfbbe5a27e504010c3588b20ac4a990371b9d
Date: Fri, 17 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776434853
