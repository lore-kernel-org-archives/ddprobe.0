Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C9D3AB291
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776079053; cv=none; b=oDbKOiFI7Zb7qqiLOGvTGJBDU1y78QNMvmsAQYnFI16FxDDvZM8vba8exCTi1wbB4/Xe3KvfjA4J4UBh5IDhr1Iz2cr8mwvzo9W43367+VH18Yfpda8MGCXOHn4ywL1n/h8/8fD81Sisg4kt0m4fed63zS2zuqoSQyJBt6fPRNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776079053; c=relaxed/simple;
	bh=Xhv0Qhz3Rjw95xZD4BRJjOHBLpqIEfG/wrYTUMknd30=;
	h=To:Subject:From:Message-Id:Date; b=FYRWe2m/szUSIRYuaRmSbeo10lLDDCF1fi/2boLl8/H930cBclsvE/Mzch3CZWG9r3LTzfdUy/tQ3GE4d0W5NkZ3ZAXHyvT0e93yHxUGZTBqEMxhiCV0/hEE+zWBUvV43bK3YR7Y3KScoY8ARPPYhDm0UMUh9uUVJWcZOA1oDes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uB9Efdms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uB9Efdms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B885FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776079053;
	bh=Xhv0Qhz3Rjw95xZD4BRJjOHBLpqIEfG/wrYTUMknd30=;
	h=To:Subject:From:Date:From;
	b=uB9Efdms89N9SryGSmrvHRIibib4NRmWFt7ph4POSeAhHAlqkKrq6uPh5OqJRznke
	 MraAynXUnI4CVUZPYZP/LdJmSd/fVRyY7ZrC45AV/x0A9lc7J5UlYVPnKigie0jcqo
	 Rc0X0gVGrxjSxRVzdBmwKG12bkSGr5T2869HU0mztYYNgcs4v6dbxBNOZN1SNs5oU4
	 Dtwk+4f1VPvVEwpgInqZXuYx0VuIPWm1fDgTa0XLJYpTWsCO0SrukOoft/za2BFSgV
	 xiqYDq7zJ0fGbeUKNxx8s0bVu1TQAzhjx7ZWy8FT39P21733bKNCCnsXeDJkD/Bt00
	 Cve1TuErreJHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0B3EBFD3B
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607905368.27510.11872463261929872338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac66724f0b098362d2da92835878187009564dfd01172f810134ffee4db5d9e0
Date: Mon, 13 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776079053
