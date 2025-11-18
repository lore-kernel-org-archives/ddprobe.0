Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBFB262FC0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763441515; cv=none; b=eaiofBmDE149vwMgyt4TM0zTmfKMduU0pPzVT+WOH/eT9t610Pm4tB4Xq39+TfExizd/r25zCu/nced2HIOMsyQyQ9X6VTDKqmZvHzN/Npbqr2IvmA9ldclUptN0WjXmwCnfOtdzQxY8ywAAk6Nqirn4WbDu2p6Os8O/GFxExUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763441515; c=relaxed/simple;
	bh=tBS8IyHsb0j6PXtERMFxsVwJj92OU8fKu32KbexsM6Q=;
	h=To:Subject:From:Message-Id:Date; b=cgZenu+BRWIvhktO0FOyXNut1WXGekD5Cl6s6UdZZ6KluK1fSYFf9AQMytztCBbksXHOS3qRr7G4SxTaxFjfquWEZwnexHFBtR0WvnyhXQlxSj9vRb0hgpiL/QwWvv3/ERnL/YwOO5acyT0LVyS3Up2yBfjaseBOSK1qtZs3e6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYZulVY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYZulVY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA401C116B1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763441513;
	bh=tBS8IyHsb0j6PXtERMFxsVwJj92OU8fKu32KbexsM6Q=;
	h=To:Subject:From:Date:From;
	b=qYZulVY89f7IBL1cGkOLowPh5IvhGYnsxrjz2nlmFTcgDNKXm+KLTkUsMQgjrCIiW
	 jEfAMZfksJvIaoVDz/OkyPPnxrva4KLkyLgp4WlDSn/aCbjBGN5eD3Aw1s6pyFgT88
	 way1UHDu3e+O/NtGxdA7QIEMw3CJ7TSpyLq7Au85gyJ2JY2vewZHk3SZDKrQnE/5eY
	 gfLeNmWwAggIq6ih7l4pJF2yRYCh3BFSQbzpGwjPVkAi+RSM0TWfcAlevNjUBVeprD
	 ijy/s8JdK0Q8VGPJGL80jDfFQuGvsJOOc7GF3/KkZc/Ab0Nz5ZS83HmfeccLzQGOCq
	 XT0iCfh+3GE4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C31CCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344151358.6304.15251468980182174247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0c2359a8d86736d010a04f0b728a349c406303938cf3ab0daaadba842ed349
Date: Tue, 18 Nov 2025 04:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763441513
