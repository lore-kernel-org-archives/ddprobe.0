Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A688D26D
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 14:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4455C433C9
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 14:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695566708;
	bh=3/Ret2C8MEj/qBi3CHl9/i5Duyz0j2cxxSW0viAXvQ8=;
	h=To:Subject:From:Date:From;
	b=L0bBfEHu/XUgINQc/a92TkMIgei+TFbX4LqoGW/vluQG0WUVQUO+aVhyeIgyFXsf6
	 lns38KA7g6wBcN8UOtKdpA0OT9stXrwbqc2Gb/j9eip1GfRQvhsXx4ueGLyWxAjdG2
	 yFY/2bHRtxPaNyH4uss5/FSSDF6zYHpd2N6SfScxrMhuLmz6Bujfg7YEom/jMCVEQO
	 mcZdHnuKmYrQ43EnFjys/91i7iMxEyRamd9Yrrt1YW6glxgs20raQJtWP2O4LvQBYK
	 xHQ2+wfsvG6XpR2fJmwTmHYzv7fDHk8mqtQjtsKrb9RQrg4pPQ+mn+yLqaku+JymVr
	 v6rrpIs2yJ9IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EAFCE7A88
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 14:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169556670867.12662.14555652556391497251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c0511259c4d231438c3a2159807514556e00389b4dbfd20f4e57bae0956b6b0
Date: Sun, 24 Sep 2023 14:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695566708
