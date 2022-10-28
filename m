Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A01E818
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF65C433B5
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666923054;
	bh=mYXUvlPqNJeuP2vvJeC07+bnDvXIsrnfpas5+A0pI7g=;
	h=To:Subject:From:Date:From;
	b=nCwHTmurft7iEGJEN+Ujsg05G7pI7vJ1Cv31jhI8H9aMUXHC+Gr5v7Um9oNNJmIjq
	 w4dHrPd4VQWYCTKoKbNvqwhsTsPWH6U75u0NBJc4ofbO73GRrq0JJlMXujPJtoayuH
	 GUdGybVPRrk4olF02dBbpsFnK8k8r33W4Tgp2xx3/gCyVr2l9fsA/cKofUyRgadhfQ
	 UO7RxIg5/1PvA5b5eOvQKyj3NPuwGGanlq9VeJUSdERpoY+nB+KF0HZEF6dBVaqODf
	 Ymwn8x2jw+dobGkyHDbZwYsJmw64/mDzc9qNeQpS5QLIgG+yo70RvgEZVdCLWOa+rJ
	 3b8zeQjAAb1kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF17ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166692305431.28831.4081576139175045955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6614f451d02a9de236915404bcafac65e5a383049079f412c6060a8d61605fa3
Date: Fri, 28 Oct 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666923054
