Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B5879C2
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABLO/KId"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E626C433C8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704681496;
	bh=7PUBXWC1DN/9fILzj0EGa3aeFcmeEKa6/jBKmNgGXJM=;
	h=To:Subject:From:Date:From;
	b=ABLO/KIdalJHLQwqVsBueHczDC7o06yhwSEoz1lVx8KBcBJA/JkCQtY9B4Az5aYrt
	 sSAS0xLqjPJYKpEUdlZO6YXqD7KlY9UTjlSbdD6zHWBxKdxaXgX+anqiMW0LtR7pXZ
	 kNGoZj9b1z++0McTgIoWiaq5aW5RhsnLQuXyxL4yNPmjy8/1VzqkWgKBcqmGpiST3o
	 WQmbPC0VIJITdj/KoJN94Il4a1sfjev6aaSrfLROAExq8bH4D59qjUUZLWI2SvJ5zW
	 xjA9k9jgoXDc0j8mSkY4TMk34ZD1X1KKB6+VgJXInTcOlYbb99j/yHmDPrnc3i3ENN
	 hlUeBIrelqu2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 601E8C47074
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170468149637.19668.7258303572101833701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce13f939455a65346b7d407e63a4aa81585e906377a332dd5097969e95c3ac7f
Date: Mon, 08 Jan 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704681496
