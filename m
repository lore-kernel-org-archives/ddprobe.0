Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5981A8F97
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758958795; cv=none; b=YFqWG87V4Jhfq5qLL/IuVhSru9oErnEaH/BEKQAbcfD2j+Jb/tQBmUH9JgjLjw5V7Hv7Xvm6SppuKWzSg1Qel+xLBPo/C4uLbr2y1Cx/cqJjdrkaaxIzZnhlzd0gKDamYg1QXQRTQxh0Ms6o5B3ngLfRTEB/c7DHigs3PdF6nMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758958795; c=relaxed/simple;
	bh=UIZQ1YzS17ETR1O+/bTweyWEd+anJpx/1m+t6rLFBzk=;
	h=To:Subject:From:Message-Id:Date; b=RQU7QLHiWLNUi8Z+BLxxYN7ShVhdfyucclnkfuV2WK5l6UMFPgSE+MRovM33tBd5NHeUSboXKBnTPi6OrlHvrnenfOtsPEGTLeYztkPcHaoXGDx9wvdN2/mYpaIDtrk/Wcyed+Jiqehzd1u9SXg0EqcoJr1v1WkN2nh/l7YwR00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5NIQU0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5NIQU0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A591DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758958793;
	bh=UIZQ1YzS17ETR1O+/bTweyWEd+anJpx/1m+t6rLFBzk=;
	h=To:Subject:From:Date:From;
	b=L5NIQU0+J45UPtgL6PFdViSUjosWGpuXdrxp0rAdwJ92TR/g9f/SrAu0ujRMIzs3H
	 165uPTlH0qnktgPanqaCFetIKsiCyhsVVAutta9bPR+n0ZisHo6MgwYKzdQ1MvAbqZ
	 Pu3ias6e8VlMoMgVp1cY5lzbTVJdnVg+E1YeXlTDNJajQvX8+kW6qF9gY/WKHR73l7
	 ahpKHTMhKQRvvTshH21MTrk8/ZAMFaXJ7danOCHUu7JO3x9X2cpWvslVHMTiy+vWvG
	 PwzCa8QUgQJ+cgz+OiFxnew7g9Obg7sZ8IMQ+qQq+CeNH9QoGHU9omuRVWB5TG6Lvq
	 2qfu/aR4J8gEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DD5CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895879358.19537.11147415635343766985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4079350ac430d1633257bc4d0f05d46654db408dc41af5e29c50524f586314a1
Date: Sat, 27 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758958793
