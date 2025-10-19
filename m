Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A54C8FE
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760885994; cv=none; b=Vwie/d6Bx+wVWOAH1aYJi+wc7fe8dDgFVrPCZJwbAFNTCNJ499V9nxr2HhrvY8GaL9W2jQ24DFKy66XPf1Yr9kgK1Dfnmg5JabnDU578BP88ktaHRAAkZpxZ2ztULS7vKHra2+7J3b+JmQV4FaIY6zgxRjZAK2/mek4NexwR2X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760885994; c=relaxed/simple;
	bh=LIFL98R6Fd0N8cyj4/H+ShGUBfIu8KX1jEL5RygLGC0=;
	h=To:Subject:From:Message-Id:Date; b=NeI+J/NR70lX7qmOon+2c6PY8Iph5qufziicHKZR9n7CnXL7s5H6KOjSLcUdPZdDb+jx4O3SI7Bhhatbf52pdF/QM3mRUs6JhfoC24qwNUWoUm3WGFFUAcJbr/GIVh8TtMsQxVpXa0QNpMCzcpfYmEM9kKzbax+EEPaVTMgMBV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoIOWpzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoIOWpzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B25C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760885993;
	bh=LIFL98R6Fd0N8cyj4/H+ShGUBfIu8KX1jEL5RygLGC0=;
	h=To:Subject:From:Date:From;
	b=NoIOWpzc7t4LCbvnGCHJH/Zglj/gBo5y1jdRx0nr9x+MFYHzXEPaCq2JWmy/HHAuu
	 tV6OlBxWvggPQ6OpNIiH8BaXPXcHN5DvO5OPN25qDV4V0H3K6KrGHloSZWMe2WSbWt
	 vVarBtJNcnaNEf248TkB630eiVlKVM5GKHbdbyBYCD8JoaXKVeBMxAcxXBwxmwy7D2
	 N/g8rWeDZiKpg/3fz+UiL/Vz08cUZydotYGHSAnp00xQG81WUR1vRoC7k8iNqAwNof
	 y8NNodxvjmLbvtr2A+X0j+CLPF62JI89cAGmAIINFsbqrlhXufjQW4F+gP9UCm3lfo
	 4RvzLZBxpft+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950B2CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088599357.2021.14113087447482705687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2d8013fbe650aadec827e0bbd397abc898a317c78629601f8e315b56abab19
Date: Sun, 19 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760885993
