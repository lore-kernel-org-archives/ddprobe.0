Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD81836C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73E09C433D7
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663377653;
	bh=0V7lIrtMBd5Y2ZLQ4orEkuKPnRL/LZofZynfhC0lrGU=;
	h=To:Subject:From:Date:From;
	b=j1Q4GOJUYQ00RNaLpk0KNIruoECOUS8+N2GJawlg2Q5QVJXQ2j/OYRa/MRLOea2K+
	 za9TMesvYLg+vIodE0kXh9Lb8a6HnjVM/p/naqs8Dh+iPhcC2XWDsQkLu3q7Ky/TI1
	 gv8R4pY4inYL7cYr2XYYJuerZvVkRukOSmC9suRz2c8ou8Kq9fFrqEmNX5TZEs9y1c
	 15fGtqHQgwwYmgx1wMwftYTl80zRHPBeVCZjGxWDjwtvSFHIPRCmFYkkUAcG52x9m4
	 CAzcE2ejl/ewuXt68CAQRCtEplfpyD5OcnKAgWqmm1Bk7fj/EoXhevoLllnaOps3Pf
	 +m8b5ejAgVAwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E98ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166337765335.22463.767227856186906038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88121de324abea4e42680850494da4494d091fa1592624528a923c02200dbe31
Date: Sat, 17 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663377653
