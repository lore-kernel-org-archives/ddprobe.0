Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE971FB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 18:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAF5C433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 18:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680976865;
	bh=jy7Go8xYZ2UpdSErfAexxvd9+fKe6PthJpH4uRfq+Xc=;
	h=To:Subject:From:Date:From;
	b=bGFKV9ahOAHSJ4wDMsbooqABcTCLcrHQYF0Z8WbCISH5ynE9CW6EinFATN2Hl1/Wf
	 cVTdlyl9DkjuFlQ313lnIwG4gde2D/wZCo8Qdyd3sHlH41RUJ5G3Jn9jEWQ6gvGWEs
	 bdV7oVKIZDQ0uFymo5H/XEPKs74ESRjMzUCjhOhGsWX/hUQ6JPMU/ONudlXrXCMfSS
	 Lz0x+55AXIifywxJIehBvcegqtD7Iot/G9PEeZQ208v0fpRmiGculVXm8mVUpJmNC8
	 dN5cWAXgDjHyzsfIrMgBOr6hympCq2W310k9Nn0AKAiqB1oWpIDg7SbepH3UGIzDty
	 jJe38ahtUpywQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEF9C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 18:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168097686577.2149.6012919549919882292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee163908086355740e11b680d950a6319b0d4445f1cf60b2f384b1610b469de
Date: Sat, 08 Apr 2023 18:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680976865
