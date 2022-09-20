Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD97ED3
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A2F4C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663642853;
	bh=lHdGQGYFXgBnZCpOgtR3qxE4iEP+5BWqQ7npRmxUjXc=;
	h=To:Subject:From:Date:From;
	b=RRfZDAAAktl44i0rwGagc4IzD75jiKg4VDW/9gf5vI6c3F+yWaNuRmCKlMV8o/Wq8
	 FXQiozA6GSogWEJ7Rc3K7zZRdPyjxhbsaUYDRSzJuFKHkyPS7m0OWhBE4srK623ZMk
	 9dWyr0LSHEjeWLl1oE2lOFPHS90xy8m+0cwrJAVx6UUFPWcAEahnEJvCGm8L8Myc8e
	 v9NgzTMSrNWxhPPlbNTJAT6tJ6xVcP170w/g2THk5RopX44c5Pwidci2NTrvkqSjsS
	 E3Yz86HCNAI2B/IuAD/6ZFQG2qbiXM26His18FgGZ/g5rM2rTTO0iVPmpN8CUfnLB1
	 W8zH9vZODx/7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B0C3C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166364285336.30694.9407543007039647114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 689b58bb9e0dd41c6ac55920f10a8e7e6783ca51898086fd28ab04834bda8c1e
Date: Tue, 20 Sep 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663642853
