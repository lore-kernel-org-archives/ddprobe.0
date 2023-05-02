Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488BDA45
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 10:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0868C433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 10:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683021966;
	bh=cwDw7GJmVt/amB8P4DBFzi8nVNLxYCtbTJ3ldjicRKg=;
	h=To:Subject:From:Date:From;
	b=kFvJIy2QqJ2JUy3ArTnk2s9PYJ600pmP87XflYzZSv3lCspAz1J0AaU61pxk2xrqZ
	 4FvSHD4jjl9K7AQUf51MCsTeDaiPp2flK0e0+yw6KyXeF4SlE+1HXvN6zu5cWAi8T8
	 d5QHJpBRkPKcoqKP153VV8T87q6oRzMBR/RArFut+LmmMzC+mnJ9wkmJCqwatXpcgo
	 ucrV3mr7S/ObJerud846R4GnS7UCgqzHlxK30Yv+mcEe2H8E4d4brqBmEkYFplnmGq
	 dAAIbEEV2yESF/ZoI4ZKiJk9BLQkdFt7j9ZS7SvMJT61/9BTQVQdSDexfue0+QRT/O
	 unleMWa9bEHjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C872DC77B7E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 10:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168302196581.9417.3621631946563609315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60693432d5fbad997831a15055253e02008aabc9f5b6b18935edc3372ab787f
Date: Tue, 02 May 2023 10:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683021965
