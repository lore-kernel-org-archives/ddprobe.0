Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61CE63C
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B308C433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664962853;
	bh=WGo2qBaXpT4vsk3geE7LXhffvl23h9qsZDPpZoNWDII=;
	h=To:Subject:From:Date:From;
	b=az1oz8m3l/LrVCjybQ9B0pCZeYQNvowTw3l/Fcj5rq8ihW1m0dXxwvkrnZL0oGHqv
	 +Imifenmht9OSFwFLzZkby3gfLRJAp/vpza2ErBmCQ/f+CvzQ5hEPqFfZr1xZ4OqyV
	 cytALsZRw7tEkpPDfO2F2WHIuqVpdjYGTKgZqQ/7+noX4uvE2eiq1myvXIqfcgiNRs
	 20AXh3RaTjzefP5orCtV4OTy0F2EIBwbCm7SHvdobG3a0bBjW9rH3vdgUI7BQU+krV
	 NuMmIQAoeJFv245qmQc2qa8ftPNrsFdIEsH0XGvdx55amPP8MbOPAKa7RnVdb15Iuw
	 Sw8K/SkDCDvfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F425C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166496285331.5631.10027404889395437592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ba12aaa6d4656a12c9db1ece87be1aca0e111cc9c5b7b05ebdb9361a8d59b3
Date: Wed, 05 Oct 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664962853
