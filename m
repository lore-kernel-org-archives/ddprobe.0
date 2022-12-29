Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089948C14
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5533C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672355487;
	bh=3FXuHeSkdASSjjW5Q4ZiA8OkxqX+2oEnsxocVCgdXtg=;
	h=To:Subject:From:Date:From;
	b=MOEZZ5gh5lbJbkyZdFxHFupzZk1ROl0sE3JWtU+RcUzNCZ88SLMVNq9xj/u1lpL0C
	 mHHBVX9t/IC8RHj4W6GOoQfLGHuArjyAdohfFmkdmPAOHnIo7zlsm0QyPKQpyWWZ6l
	 68D7qR2Dzw52SEgHOCv7uRnBekMHB6nvCse+WckevYSBKJp6XZP6Vq0sE132YwHB2F
	 P6q00FcysVGhOkLBHzlPU8OzGKnho5+d2kYEWq6xnOrY1xiPLKF0B8sGurDyg0Lkmx
	 EFJT6nyqpRvIsuPaBLGuBoRE5HoXRqZfQQhigl5R3In/ZiQv5HSe6+3eFVOZE5hOLe
	 GgZbnSFfHs2rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87154C3DA79
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167235548753.23277.17456648227485225243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f59a511a8af83f5fea92639ebe022689c423952899d59d42451b71ed2773803a
Date: Thu, 29 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672355487
