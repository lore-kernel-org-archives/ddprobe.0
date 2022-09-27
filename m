Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B36D14C96
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73390C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664320853;
	bh=edmxQDnUoGEbOPUrEaXUewBJUfIMiuzPmLRtkb+Oxy8=;
	h=To:Subject:From:Date:From;
	b=vGRuPNXOR6p0iD7tLL+31XQtOYV6jfILL7T/S4D1yiIdi3V6xS4E5oBRc4750tjkF
	 jhIqDVUzN8YELSrp1qVPwswi9FmV6PMyj3lQdYjiYXhW5DKTV+bXQKJwb+Wj2nJUFn
	 bjQkR6NVyWYmt2OBzqrBiFI8yaYuh8OwCvNTYF8zzGSoEKMHoKg4olD+02d3+2/Yaq
	 w2XjhgFCVxe8a1uVVwAz98B8TVgnLWoEp+qMZ9eeWF6KIn6nvQzFOMtNe1Gx6CTu8L
	 KSGcxJoP6PqpssL0e0aXV5P2630oKZGKScGY0I6+T9/XQ1tTavtFW4ezIMnwkvKigD
	 Wy/IZFK+6vc4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529B4C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166432085333.412.16008132794693951179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a88e6fc50813f0bd427d4ad8c42f99bb8541a2df1c77b8360e7ef3c2449f2e9
Date: Tue, 27 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664320853
