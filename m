Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5642B185A
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 23:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBlfBKq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4809C433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 23:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697325428;
	bh=4AbzwicqIADYciqYQk1004j+oClyPiPlO2qtL+kqrC0=;
	h=To:Subject:From:Date:From;
	b=LBlfBKq++GNzPIkHBYMLZEYMEFOBshoxdQ59TA733msNOLXqfQmpXhEZr8EK7qAJt
	 xTlu8LJKkfDLxX3fJXE1T/OKYW/5YruWPNz4lYyq2l0M8DY/ASGqxMazb94z5pHG16
	 o5yMFG5LQwxwg6MEqImV8RhsCcbXFcLCLREE8CWUc+o0blgDdwdejR5KuhD674b0IB
	 gHfq/FGjT0xR6WbTG2AGt+qO9twEH/WL3g/ipyuUflJwRt5aEMblwxYzhmLSPAjAcD
	 SY80l2PRU7LyO9o7og2X6kFR7lNZ9b0luAX2K89XxhXdS0yYRbOLCnw1bjXrNnnwII
	 50+RJC5Jbc/Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A342ACDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 23:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169732542866.6137.11091238323794943888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9fcf62069ed845664f5b2994aa58b58c0e401ed0c7a6e9ebe5cb189f199aed5
Date: Sat, 14 Oct 2023 23:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697325428
