Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F842192F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768758834; cv=none; b=hxxCANcG4EkYBsRsXWWP5AZQ/Bv7II3Es8XABWbElhi1FvTK857MiZbOai0R2MAwLcfxsiUYKVhTSQGFvjIlbXW2TBzD56ZoTqzrkyrSmzUKBxJru5Hz3JnqS/E2vO6f7v/3l8485jtDlPPJciXCN43GPmQ67uoQ03h6Aee5BWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768758834; c=relaxed/simple;
	bh=TQkIY7Q914H1zeMORk/lKzCFPRw5wUjid/j8lwUaKjw=;
	h=To:Subject:From:Message-Id:Date; b=nzJH95mRn4bO5QkislYqcyYPAucGV58OgoO0FAwrHkPQ3gGhuc1V1+xvcA6fSxdQ1i2HqjBXn3RWiw8/Vwh/M1ODDLh8/YwtxQUjhpG/MslnOGEK22u38eefb0ZUDScjIVvwur0CmvzT6HqlzuHYWeZvchvdcTDrutKF5g2lLJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPzWqyct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPzWqyct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A95C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768758833;
	bh=TQkIY7Q914H1zeMORk/lKzCFPRw5wUjid/j8lwUaKjw=;
	h=To:Subject:From:Date:From;
	b=JPzWqyctmIHQDUHuJccxugahVCN0UIc8vBjtbRRVKXDGSjLsZpRAM1TotCyyXiuXM
	 /8ZgBzYpFLCS9PsUJK4Dk6G9x8LY/R/ZpAj3TN2eKlAIxbgc2ALWaBLCAwziEwHsuZ
	 sF8oq4DI35SEUoFBxB+XPJT6gD3MXFhUvODPkJx2xo2hvqprPfzV6HXwGF4EcWw7WF
	 CgUELmOphbas1u/WJBLGmJC5Ypvk6PtlgMiPmNgOOhcAjMXuWVk2TuWmGBqXSsTRLO
	 GB9p7KL5XGNrfW/DKuFgv8KiY8iVPBbZiUyihI1/DjYGUwrwJTjeqfJl78d5HsXVrM
	 tKg6gi5my1pQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96250C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875883358.11316.2796560694172967278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4009af6bbf004057c78722d36b936372d1538e728981ddb53cb5eff80198247
Date: Sun, 18 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768758833
