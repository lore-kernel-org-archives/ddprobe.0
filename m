Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FACC539A
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715996543; cv=none; b=ZtDh51r9+JGeWLLlYf640nP2a2iYsn9JLwbB6ihGdOEowlbejNksKK7N3B9A6G5zMtU8AnMjj3VwFw+IBVqLl/Ebsx0+r8qd+ynqKPLo9tDiIzQDX4GfAx6cnCQivJSzkvJvT0/T3uZKHJGgOdwYFc2Y84PRn9AXFACFCemcRdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715996543; c=relaxed/simple;
	bh=eGrwojq+sYwStQXZLak38FZ2mPPp0t79WTpcRxpzf2I=;
	h=To:Subject:From:Message-Id:Date; b=HNOEbELVY9cQ1k22wPThUPIxXtJybeXIHGuFoe/PnBWPVjfmFQHdaqoLMUByNB6Tk5uL7dbhz9Fo0SJd3uSjEu/WuVOhsEZlHTNk1rhoq6qpqDRxYhnQ8LMpbKWnBBqVCwvSqmons7yyo76Hhpif15w3VjMldjnpPbYz5KfaaCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5hdZ1aT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5hdZ1aT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A3EC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715996542;
	bh=eGrwojq+sYwStQXZLak38FZ2mPPp0t79WTpcRxpzf2I=;
	h=To:Subject:From:Date:From;
	b=M5hdZ1aTgDn6h1FIYzSFBlfrf8digNXYXZf717VfmwVNBo7tYg05be5D5XV5ji322
	 lNKRO2QAHXYfFQQDjWnTp97NnfKgXreFKUNUQhiM0PPRiXs36b8X+uouLFdKaU9MrG
	 /QdJpG4euVyOH0WpEADjYtXY2Wyc3yueSQ0E4vJHW25YR9koxJ8/8n97yySmsXAAXz
	 ZYE+TdifA27sxuMxp5LPKVLKcv1b5OZns4X0kMhtAX1rZ3g4PW0XK6yFxH7Wdufl9o
	 BtZFrMxyQJa75f6V1pX5hyHIqkc1jeRkBtwAn7/GK2nedl4tmLcqL3s7YvHSynPfVo
	 6h3fHrryuqxPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCDAAC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171599654281.27364.1489481994401080276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06778a9fed0d58b3541dae0fda505ce0e471d91d1740104f07744cf0800d6dbf
Date: Sat, 18 May 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715996542
