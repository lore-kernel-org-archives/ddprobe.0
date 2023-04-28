Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E0717C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 03:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9404C433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 03:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682653925;
	bh=F6r8Rb50BpmMDqOA9BZRop4TYZcKpWd3ndIAW6snaO4=;
	h=To:Subject:From:Date:From;
	b=hCgqPlhRuQlXYHqG8IhQXjDkttX3PXxV5cJQb+2BYyL/2KHS4oQwmHyW2QDZUWJB8
	 nRJ8dDrpxPImN15kP1UFciurXImIzpchdeJB745svEZTZJDeQX+uftc3NQBhaqszvN
	 +NdyjTDZVk/bOnifyavZ3KrMT/zR1+VakD4rAZTp+UkQ0HERk7zsVzCONHOBdJNmO1
	 B4S1cXtrb5p2qZycUx6abHIAXtx9F5Dsk6zJGUN9iWuOK6aa0tzGO5BvmmkldtGN+8
	 Rad0dZsCuTdYxa2maMKCtsTgrzT4s34da+Aclq+zcLJ6epc3nvbx+tjpPh6+bMYewH
	 acMjw5hRJZweA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9FDBC77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 03:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168265392577.3779.339604761658318978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0069d03d1563516122722da89a4d04bd219faced746ac6a3e4d5767258459f0a
Date: Fri, 28 Apr 2023 03:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682653925
