Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E2F2D94B2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766268834; cv=none; b=bYybyREghl8MHJgK9Wzfbv1dGGj8R29R4TzlWAd1huhSO4/ttZQNvylaHetfTVMUtO6ir6UqrXS4aKtpbRtVEmpb3wCLYYwrZS7tcWp1ltrsfYBvVMHWyJ3B6k7kK2kiPnBVK66oQjlXc6nu0SsNNg4XHrsenev7sOworZ8CXZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766268834; c=relaxed/simple;
	bh=p2CjB7bVxBg3I+/3QjJjvlBZMeezryLo4v4HTjAu2DI=;
	h=To:Subject:From:Message-Id:Date; b=nlYXIKr+y1SF+BpkqbfgFUywda7NcS5rZOZm4nxca0RiL/h7X41rf9fI35KFcM1mYJjWT6KSwnMk/NBmI+O5Ao8j8Rdbjg6SfbGFkke71qeo+dfLY7LX4P4sO1MaYWXhh/wHoBhmwxzlB9wCF6B0wSUt5JPbfFrJyH7fcWYZw44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7T25Pw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7T25Pw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50DBC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766268833;
	bh=p2CjB7bVxBg3I+/3QjJjvlBZMeezryLo4v4HTjAu2DI=;
	h=To:Subject:From:Date:From;
	b=d7T25Pw4O0PgnJLhl4GKQ70WIUC9TBxqfC3TNFibcHLmhJg3F0LXLBSqv1Zp9sr0d
	 DHFBBrQze3EH91ah6GfwUcouCxvRXVOjdS1N8a1+8OkstfQFWATqhFn1bDJKTNbNnt
	 7crrLIghsrLGXAXHYrULQY5Rpj8IItxffTM56d5xpHDqSBZYWyTGKrCjdChJu0JIc7
	 89mdwnXgsn6tfiefBqplfu/PzLoWdBqbLoNda0Ci0w9aOWVjOkeRBqU/+lysM8Yk1C
	 LY9UYpkwEZ+OaXazoH5A8/pZEzNpvXqpbt5sBK1lH9EqYg9AmHUJO7rmZ/0Wzv4S7H
	 vhO5WHaJU5LXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D2DE6748B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626883357.25423.10413056007121710513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab5412205cb3c341cdbbd1fafffb8dbe7fe12017969da79ed6a3ce7294ea473
Date: Sat, 20 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766268833
