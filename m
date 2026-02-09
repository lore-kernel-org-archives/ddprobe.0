Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263C33644B6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770641634; cv=none; b=gR8YL2A7MPk7J1xssEWayD4bMWLJqloI+pP3Eo1Sl1fIiXUzgY9bKJHLT7sgNSo8Te2liAf4KUv7051T6AMEuOeu9Z6M46zSoChZJ0lsstEfhWQnKrX1f9G9SwYZj0glRjS5G3xhE7A3TvgcF8CPMqkD/x3joEo34EeRvvl9Mmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770641634; c=relaxed/simple;
	bh=9jpH5bga0pgI4S+JF4BM7jciq9Nm6mw+QnA35h4NPhI=;
	h=To:Subject:From:Message-Id:Date; b=ev2ZQa61Lj2cD+a+ai6oP/zTk09Vr8Ovbo3KQdn72IxR2uzSk7uJzZRh4lJsqRv7XvdL0Xo76hbW3mY3KC1HLX4fvuwX4A+4X9pk+K0pTIdN+wqd7mDI+VepJHN5otOCAgmrqnmWlZVHBnzvU5g2SUoUAYRVd1q8N4hMtlTDgT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdJWAx8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdJWAx8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC389C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770641633;
	bh=9jpH5bga0pgI4S+JF4BM7jciq9Nm6mw+QnA35h4NPhI=;
	h=To:Subject:From:Date:From;
	b=YdJWAx8SrRi71avpZOEpcAZ1Us11KC+h7wMxGPnvlpqm6OfFswhrjVBNttY3ExLXk
	 ubDNhFsR/XOsId+kafO+5wGhEFUa2q6si7zml9+a8qE3D8BDtZOiPZxPdwi3+HSQZa
	 BblkJZxb23x1tb/QPwKo1P+s0PJuagU8veRQCM8v8TTwZOJyKy0j90Cgjm1jvXeDkX
	 6/XJVIJjL55XUmJO4UojkYPqhrhM/F0+ws6peU+1Ao6Vwexh8EH1BM3DupFNyd4bkh
	 FKWd4aZwhT6/jCKGMSgGsF6/1JYwpz8j+ff/qqnKEMQF+9NRVMKTnTInK7DrBkPLgN
	 22+kPlywW8MqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A70B8E81BB2
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064163366.29796.2503249686429872403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aebfa787d97eef70223abe52c9eafa852d464d5e83229abbb80d9a300a9e6613
Date: Mon, 09 Feb 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770641633
