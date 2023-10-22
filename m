Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CA5A48
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqALujNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B289C433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697956696;
	bh=nN63whH/uzI6Bu53kr08mcjb+gmTa0qVm5ALDkU9Vdc=;
	h=To:Subject:From:Date:From;
	b=jqALujNUWJoee+78MaJq9F0fcl5WDqYGGz3i8YS0sbbIk2lmJxwBhUAtgv/FZa4/c
	 zF3csn8GITnAFfZxmPXAPydXtyCqGk5yw3J+suM1FxqDaHoaLvkEuuGpRxQwiwb83A
	 TeLjnP6beNyY+IZRPvbYMbI8bnsoy/Zm4ELmJ2jy/88UzJvIY+ttsWrfi3C0gryQmx
	 ftbO9GfVRzfJ4vNZ7d3BlUP9TwhNMUsOtFh+QqK3G1pZALs70idqkXuRjWUeLp7Lni
	 JnEIu/V4a7AOJCAtfoopqwW0CyoZhS9A865b8FHUgfU0NLXbP61cPUC4NoRbWJyg26
	 rBDLLoUB+05wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DCA1CDB474
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169795669640.16678.8309846602476851923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 719468b832b72bc3bdbe4a3ea9e2c8114dbb5710bf4b937479a0d655a3d81309
Date: Sun, 22 Oct 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697956696
