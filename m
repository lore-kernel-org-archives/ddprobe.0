Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0D4883C
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buWF1Uaa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AE71C433C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700707096;
	bh=UQOPp3Biuah4AZGO/TCb/ADJNTUF0kFMvfh0RMJrL2k=;
	h=To:Subject:From:Date:From;
	b=buWF1Uaa/Izv0ZW3k5uMER5wxY2PMYBawM+qwtL1whZKyGabq/FlfdGxSWBQ/65o7
	 8EeFhyfFHRZAJUOqRndVy9vJWGFmi6MlPJdsg4lX5maY2/x4xLJ7TSS8KLSemdb9pP
	 oad4OG7mzP/g6mTy/jS0tD47hoPy5PGU57JhmfQnbWTQsz8MIUd4RSnGMf7uM3OmMC
	 BiPERFG+CE3AwhylKZZzfmO2kgKuv61knTk0ORtCjyNRGaYEX/qeicww9FK7PteuY0
	 ZN+O5A9rPPUZ1+fz8IpDPrVLfZsnsUnO4D+hBi5qUlPJUa8noVWRPWijU54ZAAnPJM
	 Hl0fRtyUiHh6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6744DC61DF4
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170070709639.21179.5794162537931429050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e7ab6028008a2da9f267f2ef2bc5195bb6b414cded340363c13f1e25a1251ed
Date: Thu, 23 Nov 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700707096
