Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156746D1A7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765726374; cv=none; b=bN2uVcFduONgFhwo0EEwc+83EUZnO8g7nk5ZqddlR9BzHzcgwKOB1wIZvGPl6uC86Ww5ZB0xs26w8mUE3APeDU8rBW8QXZ+YNOeJiwtAHBNnREXgwxUTLf/SeTfy43QIVnvPYxmWRTH7BMZVp/ITD2BLypfkVSTV9WJTInH/nlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765726374; c=relaxed/simple;
	bh=cfLxxie6VLMM6l9wJzilBoxy3b4e+v1oCePhEAOBLKA=;
	h=To:Subject:From:Message-Id:Date; b=HY3fZ0GyhGZoMuid6E26UM+tOLyJ+PpNrAVdRrV0FsrPvlJt81K6E8+LrFEjrZxlBb2a6MZJkPUHDtzE3mz61NbLWENn0gWSS0MNtL5lPJKhBLrANBWqsWcSA4StCZ2NuAAoIZwniB3f6UpPv/jmcaysD1QsUK+lI/N89q+mXLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TF8Dt6Pj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TF8Dt6Pj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE3CC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765726373;
	bh=cfLxxie6VLMM6l9wJzilBoxy3b4e+v1oCePhEAOBLKA=;
	h=To:Subject:From:Date:From;
	b=TF8Dt6Pjhp9xshUAZKA1MQYgav8B29ucP0WjRgbKRF0+KbLmXJoTLJG0YNPXiboX3
	 fyHewTfY1DH28IvgGZfqPbLJrn0tGsvdA3eWrlXhKEK6M9zlEygISaoQQw17eg4cRn
	 gyXkZNGj4mpLoRHNGWAjGEmoR70c/Rer8UU07VMtIuvDDW0Ec0TzhhvlRCdR5B+Wpo
	 UQPJF55GDeuzTTPvg9vLRPpMApBugQ7FAMjoVUef6/Y5GGUeikUzrtaN8CJDFvjJJN
	 Yoj9C7AIdJ8GCzXwmcfEsQ9VRszzz6UYjGloB3qON7lN5C38jmkLmar1fb1eeWsU8J
	 /WeoenhdkqJLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991A2D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572637359.19905.10810320675684747696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f541d35b2a8bc20f220d334426d8d70bdd32d368e342999520037ea0cab48c19
Date: Sun, 14 Dec 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765726373
