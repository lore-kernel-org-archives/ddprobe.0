Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B137E
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 18:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D552DC433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 18:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677177305;
	bh=p0nsT+kurbeil0sXgf8QOp5zkXbbL0Dc7pLdMNFFXeI=;
	h=To:Subject:From:Date:From;
	b=YdTRuHyEOLeZoGJ8rjHjGcHzcKTYzuOurOFtSan72jNzFabq2ijHYFd0mPjHzNicl
	 AI7PBnXoP7w29GuElE45BR8WWmtfZFPMC4I1Mdb0IuvRDW2tqHMUkz/+UUgSECRwwJ
	 YqZB53FjrGHNHrK9f/3epCoJ1bXKlD+Y5xfd1cWGOr+2ekrapYJ2mPeXrSiOAjk5qk
	 QZw1jQv7U2jFz0/U5aqHxcu1pP8Mma/uQDNT6aYAO5CezMK2XO7YcekkQvE2BE5HsN
	 KSkgUucezMkIiMneCb2sruqtvtNstre13n2uL42CudQIRuGvzQYy7KvtFYUGDyohEU
	 98mdXWlwyVPFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B46D7C61DA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 18:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167717730573.29102.8518061344146299883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c397c8a573fa1f9a64a4489f12d9d7c7c93db61cf374fb22cc4e3c973ab0d3ef
Date: Thu, 23 Feb 2023 18:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677177305
