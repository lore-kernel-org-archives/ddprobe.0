Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E83210950
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jijdwnpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88D29C433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699607296;
	bh=jNs27RG7RqI+5S2YgwNLq1Vf+9nAW6VfNmxjFmlsfvg=;
	h=To:Subject:From:Date:From;
	b=jijdwnpeUYYbC2pjRIgsMEUtqbUe91dSC7VQxa0No79oqRtTMF4/6yH8g6TtY8zXV
	 xyLSF13jfTnQV+C2jCkiwoDVpfmQjjC6lnGjnwU9Sy0oL9FOobLhVVswW6qcJlUJ7N
	 H9Dz46UW3+G2oBfMT+2Ta2bU4auleabJDqotm2tcbqFAdXhzEVXyW/XQ2Ehfmg3sZK
	 Ak5PMArUVxYJCxPi2SYM0hUDw7TszDuApsqYWMXz/GcSD2/6VmgNJDOITmPbOah0Mv
	 leNYAQ7oF1fGUeApl2Qu9Cu/I7wmXM8H5ktcTA7GnZ7RhsTRr/74xZ5qH/zmqnyZiQ
	 FNx513zacAV8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CCF6C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169960729643.8864.4771242812588472551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696d00dfefe7b97f2f128b1f2178e30268facd26c16b2f24e2ce9faefe696625
Date: Fri, 10 Nov 2023 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699607296
