Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCE8125DE
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714813943; cv=none; b=XQxIn1WTMZNBBDclpRrfh0nbAbEcsuNRWv15I9g+/lIk9B3gkV/w+rJdxSd3aOtuLdie4GSkVTm2/xy3I5Bw3HWP1KrrYfKDfTxjLfWX9K1HZg+Sv2bKd37UzZAMXYApAbISVCkbMgWb8OrvuBJi2e1s1/lSHwBlf2Ch+qcO1Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714813943; c=relaxed/simple;
	bh=JPsHNQ41yiITpDvfxeyaT2w+a9wXRrJGXhD9xcIIrD4=;
	h=To:Subject:From:Message-Id:Date; b=Ie1ya3aqkQ14E5nkYmzbLB9JgQQKOFcCafXLu3eh2qPLibWo7enJVKLcji1QVfxrM12D9o8LnZLZap0+PUmSiuMR4VC+2tPm9MhZ93qP+woJMgEk6svR9+aEZ2y7VIuxrro9uLhq7+wIS2qDjoEwgOGzrF8Zydst3oEnUbgm9tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvZ5JGbw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvZ5JGbw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA238C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714813942;
	bh=JPsHNQ41yiITpDvfxeyaT2w+a9wXRrJGXhD9xcIIrD4=;
	h=To:Subject:From:Date:From;
	b=EvZ5JGbwdfmebTchoN9d1qe7W5R920gxMzTAofXwtoSDEj21dyhFBsCK/xhFJyVv6
	 HIAluJDXWsAlVC0TgWHKez8L38kL61U8Ve4KlyFM0KImtXIEl36QNgnf0ZPVJpWckl
	 ZPH5ri94Ccb+vpS8rrLgiwEd8102JkMxEj+i+iezd7BXr2BPiYA1jq7bimiYtpxAdn
	 Vwo0qzwrT/Q4aZ1y3mbjepsbIHTdZvhjvohAUsnqCR5vm/qE37Cd0/6nyvo5kVwDEK
	 yEcPfx+zSYXLGXlyQm/lpI8A+ek8zair1BrGk0eA8O579Ck5iRU5V3OlUVu3saokww
	 lBWWVl4Bz2tww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DC0C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171481394278.4545.3308498995818031253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb7ac60ab10242071621c518d648a215cbe34e5b4bb74bee90f620aac2dcf98
Date: Sat, 04 May 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714813942
