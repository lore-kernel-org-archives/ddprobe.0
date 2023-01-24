Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6748F63
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 21:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E04C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 21:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674594785;
	bh=tFNQGHEOQ+hfCf6d4MUcsMCTw5+EPPhdTW/FEgTAoLE=;
	h=To:Subject:From:Date:From;
	b=AhX0SeglDsiT3J3NzVNGTthbHFyf3AR7tM9sSoSjCvpxCLgEqbIyzcPwT008rz4Of
	 kiASEezzl7scWhG5P096tz4cjFzLw9v72qqwjLBj17T6EvHLoWuBQKD6h2x7JKez9C
	 zn/ALug9qLfzHAmzh4dvZCB6D47kUwFOw0/4yB3cuvKb+SQ6AA2G6oU1aG4DPdqQNO
	 iq8KDWmWRYHDROqGEg4rqTqic7F4W+eVsurFjBqu/tCTSeVwZ0Ji9flwBD4JBoJ/7i
	 Feh5hkL6s9ygsXviYbfWJhG88k6tUn1yS1UUmuNznS6xV47eUFK87/K+/AUHogiAs3
	 ozfCNrSBYwkqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9461C54E94
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 21:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167459478581.25334.16079769635002534067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c27f1481b9bfad60c25fb949b77ac042675e6a38da42a92f4a3b66785f93301
Date: Tue, 24 Jan 2023 21:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674594785
