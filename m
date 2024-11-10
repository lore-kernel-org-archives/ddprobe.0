Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B4DC13C
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731198954; cv=none; b=vESQo+rC/w0NLprCmwZGzdypjMFQwvKR+gxqIJpvuDA0Fy0ZU9yz7I96mgen03Sv32YmQpqHWEj6qFsULPXe02ZLXMkN9EDR5bQnpnjS19KMRkGrDViuDtTwv1RB7P7Jki6KOLRZByF9BTHUyhS1Iy3yCl0qxy2bw44mJD8uyE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731198954; c=relaxed/simple;
	bh=gwDkTHlG5Az1IZMWrChCsJVaMQcNaf7GpaptWd4umyk=;
	h=To:Subject:From:Message-Id:Date; b=pPUfUFju/hBtapif/kpLDZdW43iDyThdzflQXlEA56Rvr59URha5QLa/jpWJCi6xi1vCFHQDFcx9d6Ms6rvWFtgcUT4LkJKYLR2xZtt4DGxLs2J4JHVTbng3mr9WTGReivI/zMVj0daGMB2+UfvTreQ2LNF/vMZSGsQiXnKjbhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fk2o4+oO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fk2o4+oO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3D0C4CED2
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731198953;
	bh=gwDkTHlG5Az1IZMWrChCsJVaMQcNaf7GpaptWd4umyk=;
	h=To:Subject:From:Date:From;
	b=fk2o4+oOZ5fnkFCeAFwL8q9XoedeRShXdnwFWNtQU4xrtPHcoW9kWCPekusnAVJ2+
	 CqZa6w48PGKeqpOQmCSxQmB1uxPVioIzqnpj7fuYjMxjBGXcuNVYVQgnGNOEZTNAYb
	 q8kRxPFpBhFRlKBNrI/p6lsx2SL46xTkyJYNpmqRXF44K14rKos+STL7mh4k2OEZgh
	 M5kAz4SjJLaR8QJPZ6zxiwhC4qUsi2Lg2gBJE6CA2ckvpudQ44wW8F5+tbGs2gBnaG
	 L9czPwVz9Meh8w4vQ+i7MR4TiW4Cf080QNIQM4Rwi+FXmwHIOZdJF0mqugEDcQNquX
	 Jn/zIJMcfJgIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A907CD5E38A
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173119895363.4544.6710614809839947529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94eb82660622423962c08ea43f0fdc04744053804ae019fdab0268d3afd5b0e
Date: Sun, 10 Nov 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731198953
