Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60ACD1ADC93
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742478594; cv=none; b=gu6FMfCIwcKQF7ubOw+pIZBQUMR1Crb3IzCpqbgoXDa760QTcsP2kzpOC8X/7z+6v1vm1uXfuQ7v0BdZTlJEuqd6Avl0ssFAFldvX7z1Z69SnAm1e6eiiZ4lEh9cfjXmEINel2SdFEG1IKmXMaAkRd1tlYET0xIbmw5mW3naoTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742478594; c=relaxed/simple;
	bh=hubEoCbM5FkJe6ob+/axDUKhQxZorXIyWkYuVkL8KxI=;
	h=To:Subject:From:Message-Id:Date; b=l63vagsNSUNjSsw1IGeoRrmmT4b7H+YDLp3CVjPZh2tUuN01C12b9ZvXrtEuBEU51/X2JUvx7j/f1hWvN7Yb4hGjANc8CfiC/IqBQ15bdEkAwOiYt5iDClvYPP51XvHxmDpOtZxF7kTSHHCbegUygZNl+zhzJmWCfwsbMUv+Qso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Seej8vlq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Seej8vlq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C962EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742478593;
	bh=hubEoCbM5FkJe6ob+/axDUKhQxZorXIyWkYuVkL8KxI=;
	h=To:Subject:From:Date:From;
	b=Seej8vlqZZH/pTj8CUUpXmSp/xKOYRYk2PlYvoNtBavfJEmrOIhq+1atnOzUVaJPB
	 z5P2fid4y4Isr7B9DZhNBuewG0iT4mU6n6XSGuVP/OTHBPLuhB0lPlFOCae90Zc6Tq
	 LjF/7h9VkS7upO2w7ror+SdLwG7baLt6Ztjy6GA8GmPTFYBrCB3K5P63qvufHnhbcu
	 kOrIFeb4CzDQVArBRgVvcsS0clxJxUqNyfMXOXKtKSBCYThVwNDUCLvleDx3v8MK47
	 NL+1V88B3v4S89LR3JSpLHgKnIHMgw78G9RUYM3+RFlbbQKvcahL+MwwzDQzS+PKnK
	 um54e/ChQWzcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5529C35FFF
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174247859372.2488.15451167403718653660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f29a7c19bd75f314742d6bf648bb546ef1f848ce6fc3998f432a65eeffaae86a
Date: Thu, 20 Mar 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742478593
