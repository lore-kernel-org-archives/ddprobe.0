Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0449A23
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DBCDC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662003053;
	bh=Gx56tYCcZ9CQvOnq9850a+CnQyeV+FjvcP0ilZynUW8=;
	h=To:Subject:From:Date:From;
	b=oX2TsHep8jfg7/bG94jwnnspOd1ZjVEhtL/HusI46jmi2gOM/FFmsc+YYHzoRYx5Z
	 ngj5kzR1pfUA+oUr8NgrcdNbQHRkGfPxph0Z5NbrQ7mC6COCWZZW8Jor06f2qHBrCj
	 rCgYmnn5h94Dn+mTyFKESEjUZ3ZcVTxJz7ndgetUJ/pYDOLbSlCoQ/3SmsBLGGLgZ+
	 pOW4aLL1/1nYB17V9mdzd9Jh8ErkvjvV0JuPWgjKS+GzTLmOlHw9gbAURqOvmbdaS8
	 cVYpxQVA7g4gOdiqNQkcwdpsWiYKc8RGXY8I7XzfY8rFyuMtDWFWG80Sy1oCtI5Dfh
	 2ClkjABYibH7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E17ECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166200305332.21498.1228062794545280924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a796f994d3ca7377a8e6b52a17129313be8c04927e2d91ff3a389bfdb1b8697
Date: Thu, 01 Sep 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662003053
