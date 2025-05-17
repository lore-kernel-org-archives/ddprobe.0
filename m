Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A27FBF6
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747481394; cv=none; b=SP7Rl1y2xG8DMed6Hhs4FDR1JNWFofcnQbn6jmUxJowwkGilJvgaZezh5I1KSCgHH1YOMg9MJ6AK/ICZQ8ATXhzrvHsJmjYTuZyB8ycIlJKA3EYb0FOHrJZ3VL+soZas24+UOeYhN95I77XR4NF6rFWsiX9rT5nBHtdL7uv7iyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747481394; c=relaxed/simple;
	bh=eoFCL0ba3VSGHZHsNs8gDX+JyO9Q9VIxqVANowwR/10=;
	h=To:Subject:From:Message-Id:Date; b=slSbCeVu+RjmI1OZczEEwydYqY+sk/Nam898Loa7CR3O/EZpo5YVjRTZG59zEl6lK+yNeLZw4ujO8M0sZMw1BE9asd+IdoGXVdmGDtIKyornr36CJ323M0oaFUvYQw6cRPOosk8MQ5gKIpRMMsIgfVNP1WLTipxYmusOYzut5Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSgj7p2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSgj7p2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06FFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747481393;
	bh=eoFCL0ba3VSGHZHsNs8gDX+JyO9Q9VIxqVANowwR/10=;
	h=To:Subject:From:Date:From;
	b=qSgj7p2jpXReJkun+nR73ADlbUHaQQozMg0DY7zsW5rS7yOnCzNecXbOlHJEnxsTW
	 WkL7Wg4EogYUQP0y+kq9xyx2OxQz8EDXPYWWrUKcn9GsK9TDJ9auq5+LXP2EC3y8Wk
	 j8aDX8M6kGqjjVT74V6bxKn8zbkeTJ0bbuDA7/B+TdLWAyvOG9B6M3qpFl9J2GPji6
	 1v+Zr+WcEbh4tgYANn4LyrEbbAEFdLtIMA7Q9aKWeOlWXMkey8uxdLHhwdfInphvrp
	 vmPpEGRpXfULyql9eBE7+hq+2R7e3/xgqRK5FW0Zwb7rO+Hj8y7xuCmP1ZJ1fY+094
	 gS5yb0zADmkIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E93DC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748139357.22073.6605495917467497786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a85dcf81a07078558499da805ad475472c19fcddcfe8112d7dbb21d62cee04
Date: Sat, 17 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747481393
