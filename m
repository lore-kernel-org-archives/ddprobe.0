Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B793C612F
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A99CC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662754853;
	bh=LRI9YGvVRw5hdAKwanH9Og7RF4PMjDpS5fHpdJdYLBc=;
	h=To:Subject:From:Date:From;
	b=MQ9vfJJtte4Fc1UbnBBixINOtdwgA4fgMS9sxQ4C4bPsKGf0VZlFZ0oBNea9VKuwv
	 /0XnEaAjC914/cXAeWm0MOq9Z8s78OMexWYUojEWaV3EhPnGqs3AxBEewq9kJt9ory
	 mgMnc9nuvIvwErKjpsAaVwHKQzQ5Xq/1Of6RPxucSF5wwlTK/zeBjC4R2OIb3XZsNr
	 LERrDftEHY8umi7HHuDAk6v9MqQdA37emJUNsXekpokm29Qf/uGST3mV9gtwrsKr9s
	 EpvcO2xYUSqFcBw+gVZ+JXHpO72PNvAseTmrYa7caZtwSGe5J1XLxPIX91pZNV35cy
	 INSdj/Ewt8xxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A28ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166275485334.11512.3676873838094619364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d612d925507d988fc3c65607765a9ee06d27f5cdf6e7c71ad222ad0105f805d1
Date: Fri, 09 Sep 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662754853
