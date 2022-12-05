Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7986184
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DDDCC433B5
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670215254;
	bh=BIDKiiv4svx/+Rm6Qxz91Jhh0P/gITnFNGejxltvfkY=;
	h=To:Subject:From:Date:From;
	b=hjaBYYi4AnqX3Uu7ZpcIpPSFDmgLWzT5rwKpjAJwad9gRU2SqCqhncU0pu4TXnNDZ
	 9IftClAB04ke622tqGNKDMUCVL7GCUwJbzeK67NeqXA5te29qHahk3dT4cYvPWmP7U
	 +mUwS4dSBycTZkIzpJ5Loqht9rlleIf4FW2hN1ruvjV2RctngH2a1o0GrAmGf/EIni
	 P9Hn2gL/0nyDcsf4DMx/hxjUcXmRV7MlFkyLJcSvKIYqcXhlGqP7TTyneFHI6/XL6S
	 buVf2uvAbjgnOWRkOUl62/w86x04l7U/69Wu2G5jYnK2Ui58d7HPWZvOC1D1DrVe0T
	 Z9hY9SV2EaemA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610D1C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167021525435.3323.2354259729683980453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57a44a5aeecd533fb060dd890f70c1aeebaba7f18fb795286a09017f41ba440
Date: Mon, 05 Dec 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670215254
