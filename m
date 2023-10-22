Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CE26AB4
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B90f1CB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B491C433C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697986096;
	bh=JORWGWZV582JJknTalC1EkCqZO4jnEeMHNh2AN+E9Uo=;
	h=To:Subject:From:Date:From;
	b=B90f1CB2mtJXQMbfUIxGfmcuPTIom9V1kQnQjCQ6PP4fyyO5xuSiI4KMcFmFr4JaN
	 rP3wlklj1OkBKChNS+a/W1gkmwzsx6fX7viZHyduoc71E17/AYVxHhH92NlNGgELkR
	 /w5775Oo9YTd18u4mWH9NT4CNpbmho2OhSG9JBTm8GZZ/31KqEQR2xRibJAaCOU/Pm
	 ysNvL5KBYi6EvAMwMwx6Jp2uqQLADlIJnXfMzMNKkyRHWPC4mQ9pyMFwC/gZGzEwRc
	 Wx/Lg8jYfh7tU6be0rXJONqLktnQ/+1utccLuKrtNYhx22pkvkARp8zGNv1t2gw5iV
	 RBmd0X7rUk0fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B9E9C001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169798609638.24923.15657956943710025438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38349dc1290c5c39fade7cf772c08b426bb1ab40f2f0cebb676a2ff50e780feb
Date: Sun, 22 Oct 2023 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697986096
