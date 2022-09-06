Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAF44431
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69F8DC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662466853;
	bh=z4z0Zcm0UrdKWXgVYZiIE5oZFOqCh+ZdSbwXKZT5fEA=;
	h=To:Subject:From:Date:From;
	b=sUrliOo0rFzJB9wEja3W1Lx4ulAMbMfXEaCkW+0VmYOWKekZcqjvTE+jdJ6ble92P
	 HoThMYAP7MzH4hmgMEh1ksebTtXA1jQedO7lqiFqdLhlKLZU9u/b+yHy+U/HWwcqHg
	 w8dXoaFHyo8eFHfR/WTzn0zdj3HyUiv9qK6Y3GhAidRxxshqf/caKqMcghaEyFemmg
	 MzX8Uy7dYpY2bLsw3fKurK8KuKhU21kRC17k8z5lMis1ARg5HTAGMdKt2Mhv7JLs2h
	 BYSDCFBhIq/NTZtYPL/E/f29pdXinpjncLUmfeUifWklV43XNstavgsWlxKSE1Am3/
	 +GizL19O9WpLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53723ECAAD5
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166246685333.13897.1147359910393164043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1255cd06f2b1ddf11f46b577b61f203be683beabb1f12ae970c6b376bcba4e9f
Date: Tue, 06 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662466853
