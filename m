Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6507C
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 03:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5500C433D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 03:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680492965;
	bh=wWue9HrMWUb3OBznnBe6eEJQPUxwLgdw1T0tCZZG5yM=;
	h=To:Subject:From:Date:From;
	b=ogQJeNDLBZDWcIVWLUVWgRzF3z3dQm5cGjoQaWkb06oywWWa9eTwV6t1GMnCGWrep
	 lBLNmshkzQugjKv/eUZnp7h3s9l7JdRBO4Xqh43ZdynOf5wNOZ2rvlB21xQj9slSTl
	 1FZcUtR0KBVnwizupNYVIj8N6tu7vvxCBFVYAMypWVzX3QvhNvAPt7/Hc9dShBrvW3
	 8S6yKKqUJ5Q9SiJx4t0/toGgse79t1kqKLXzBMpE5jsSihmM/sIXCJdbpv4l6P3fmA
	 IMZpdD0HH+2g86a1SHkTFMCloY9zqlbFXotvRSRUYtJb1sgPYUCt70r+6AILNlXlVj
	 dW7GguFlxeUXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAAF1C7619A
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 03:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168049296582.12216.8697307547614229401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1d7692c4a3458d910efc66c67f4dabf449eb53bc9e88bf42605ce2113027e7
Date: Mon, 03 Apr 2023 03:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680492965
