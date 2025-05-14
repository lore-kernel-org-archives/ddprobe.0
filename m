Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3E0205501
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747211394; cv=none; b=GN/zKVe/A3hSuuWAPh8wXtf6ldHgyXj2nywwSn6DA0mYZgrA2StoxFG4edJOO7pRUQB6obCg+S0jq3QbBwg0TWFNTl5cPgT200noC/AhmRK7RPfe2UIM+cnzgBV7QavVLUw5RgpHswleL+jvf4867rHuCcos+9/JQVDdyqXoaeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747211394; c=relaxed/simple;
	bh=IQN7p/X0ZGzHkcVx+r6+C8xaZ3esEfelaiiVmWt9FTs=;
	h=To:Subject:From:Message-Id:Date; b=cl3mBPujxY9HulQEWUqYIqC0YVUX4w9IwjxRWP68bUzFFfIzHwTHV6A9P+4rym0QALyNKLtB3p3kI68MTA/wu6rrGzRE4kLWkfTx2rxLIqX1/EyJEGTQujhqO64sfKNBgAEqNDm+V/H8oLEfbg4Q4TYFcLJaNIXBg5u4fISnRQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZf0rf6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZf0rf6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CB1C4CEF3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747211393;
	bh=IQN7p/X0ZGzHkcVx+r6+C8xaZ3esEfelaiiVmWt9FTs=;
	h=To:Subject:From:Date:From;
	b=bZf0rf6p1SR6kOtZvuDmScr28fIInnVmSt5NaKfCGBMafkUMbOnfVAQgJUJPHXlww
	 cPQ8T/pyZexRjCz0TZX636wOHtzwY89+oxzZZVwrNy3HmSO93eJ7tqF6wgBxijHrnG
	 ESnbM0t7PJS+YlWLjp4/WpqfxR86LycqmzjU66K6fBqV69d3DXxf+KWdJ7ewMWge00
	 ETQg3mZp7KbEHBGqjwJZKBKPNI4e/vioaW5OKY0WqgMQectjbiiZLub0qid8Dz/K+j
	 xK1Ha/dZzzZmgzr4zV2hVBH30l9XDcVEBMphg+VD6InX7n9Lxi1g5volUa1gWQV9EF
	 JYQ5MB7REX2wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA4DC3ABDD
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721139362.7850.14328788944218283882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259631b0c38f248b8c7f29db1234c8bfb9c7b3d8b46bb06b5f8e2c6553353d2c
Date: Wed, 14 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747211393
