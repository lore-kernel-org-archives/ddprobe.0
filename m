Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3367D7261C
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755467995; cv=none; b=JaUnfRxxX76ri7nwHTYuBckwwnpKwzCEMmuK4vqeaP2AfbXBh59pVtS44bGU3Twpq63vAr1zmeKtMJC4Bq8Xa7NzDSqq9lCi4xR8/RLIJV1+bPOYLYEsvcXx1xqCa9hAHugmORzonwaOZ0e+1wenCKiM0wXPRX6+YcDqa2n+Sq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755467995; c=relaxed/simple;
	bh=oZUqjlCYCC6EoDx0AJqlS07mb1Ey3TQPx0kGlf4K0kI=;
	h=To:Subject:From:Message-Id:Date; b=dPyjKJo+4IDk1yoWNd5o4gONln6ltA6Uy/sAkjuTg6+T5d1j2CzzyhV95BEWuD2aOT4yQJM8aJ+VnKrkUdsA6VTMms6gJ9SY2EfHvZ/E91ydh/hZBYILKbHTWdOiLxbumN81fxrBs7T+GR1mnU8L+z/MBhYk+H7o0VDHvRNBoTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7n/NbuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7n/NbuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CAFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755467993;
	bh=oZUqjlCYCC6EoDx0AJqlS07mb1Ey3TQPx0kGlf4K0kI=;
	h=To:Subject:From:Date:From;
	b=g7n/NbuY1PzMHuvizsjAAH0IPkE3HD+3nKuKyHtZrHwIaANxnFkFFQd3BydvGYFAc
	 AaiY1weawAA8loHQeuc7WZ+m8+2Dx5llHFk1nPzj0mR4fBcyZUd6AF3khCgzfqXO/f
	 cFyCq9TWv3z7LdokfKj6JUbp2JaYtz6hyAd2fRnljE+zw/9LeT3q/e/3WcA+StkrJ5
	 Ke4dAq2fd4Z9nra04JsW2xgLXI13V/5JZPKU3VfEdudAtCNXw4V2iuSqR8Cyb/n4we
	 9GMZeQIZZv6lonmsBXJS8w4K5AjX0W2sbWeiaqC2WjHMIVtcF7N3GrK5dvujqsMDIJ
	 shGMYXKUHRBPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B77CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546799357.13086.12039739450095977899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed20c07534019013147251d6fd7ea195cf2b7c434b2ad91c5ddb66a461db2e7
Date: Sun, 17 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755467993
