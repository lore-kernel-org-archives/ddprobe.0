Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08341D6BE
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1wTfnmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D00FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703045896;
	bh=NqaiHMyptleQdM149rtPIjbEb6bffqDFU/G13SocA/8=;
	h=To:Subject:From:Date:From;
	b=q1wTfnmC3CR0S9tKOv6G49jtKrGFD5zaMNvQHnW4/CfUvD5DpWxP0t/o2D0a1CO70
	 WUersi1yih8oMMAKVI7WeAaaR++ZkS8P5lawNTFithNrlybjBaQbGz12Sa1iAMsLZ5
	 u7xH9aL7WPMt2MXi5CPB1lAIClaUvaLY3QmrOjg1Kg2SjIiUp0Kem1OZ/Q2nthcI0Y
	 6DnYP/EnNMxLsnBkgZXI0TIgsZFqgHK2p5kcC4KD2vqVYF04KN/LUmxr2WGuxiOOTP
	 wBxez8a8JHTOfZAYdljk4QS9UWQygrUEt+e9swm+hBX+zc+9ysW3sHj33tshX5ssCZ
	 Nml5gY+SVYp6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 606B6C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170304589638.21106.11205641427942460787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf5e3869cf7be03ef994bad92951e84b6449a06b9bfaab2e641db7ca6abf3b3d
Date: Wed, 20 Dec 2023 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703045896
