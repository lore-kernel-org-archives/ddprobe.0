Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE1A2CA6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD21DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670706087;
	bh=/0qyP1W136/qS4Kmf1WfdFrs0QbG1DQ2hSZRCUCfKtQ=;
	h=To:Subject:From:Date:From;
	b=DsvNs1jKWRMr3J+hYUNtCmxtYoQnbHFP7h2fVeQ7B4Ku+DgWJkpQTIbb1wXs3SiLc
	 hmCae9lIRUVZ6SuoTizQ5OL9nNeT+h+RMgWp6t+hEWC/rU+rT95353aY9VpWRTXjno
	 nyixJenWe9zsUbdbR6tZYO+BGIM5WY0ViszUhM4wYjujfamwomONb17b+7JRYslrkK
	 i3UiuscCTK+APjyBG57FKWmbTEGTHZAxm1OTzoDAfT3SdqVbSS0UoiaQbl9h79dE/q
	 Q7eTifiRndjHUT2IS/Vq3ILaq/OI98DLd0HBsPx3lkyaf3N2To/RuAySgy0nHZ4CtI
	 aYdKY2johK1Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BF02C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167070608756.27522.13817821830004540174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674907508d03bd9a51795b6d13231821c167b16211d1995b32e7533e7ad43f2a
Date: Sat, 10 Dec 2022 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670706087
