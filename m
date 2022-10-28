Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52CF15C81
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68568C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667000454;
	bh=pMlQ4+My8cJ7baLyMu1zEiVe0NPokKQ/N2g5403kpKg=;
	h=To:Subject:From:Date:From;
	b=XR900gUCrOwaF+mhaFrN60MI1CpsmlQ2fwmZMHIERU/wjW3tWtm8Coy9diZB8S5yf
	 3CAwQWyseAYv4wSnTAeN89u8vJ8aKNyueOE2YoTW2BZ6p2aELEy3GghOaV4KNhK9d8
	 6fy+bNmJpxO16orqCd5nApmZDqt2xn2T76w1GU+RDXo1MI1s1Ndw3I8q0hqP/M0sLj
	 lEwHmeSOwcNjgQJRC1iMvBGsok2Y9AGbk0ceg8CBQb411JY6bHGbO1Xc4XKd3Oqyc1
	 kUF98aIQ2lXWG+UfM9LOEMFrAy8IhA7kddv7He1fZcDxEDGKpXxXmOn5qjXMwj6yep
	 xiifBhgYinjQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53316C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166700045433.3294.4577620971563208230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1e2cbe22d4b88c8761747dd2c3ce84e5ee9062722b74ba30adeda9227c894e
Date: Fri, 28 Oct 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667000454
