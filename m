Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3052D3DFC6A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784191114; cv=none; b=GCrwhxaOhKgvWvjUvnuuMJCLiQMBsgXRLuHDep9X3dER2AMJCoq3M+gY2KAxBkP6zDcZ7UGoXAwMJJoB9Xx76Ud5DES9HdlWJvnmoUswdJhEHVlWSzLNoMqBcjBXwfLHJkweU75T9B80QOOHuNov2XJB1VppsW5sUaKk6A6x1uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784191114; c=relaxed/simple;
	bh=bA7WXfaYlNofDXbu4vNTOODbpGrNCQH5Hzfq7DEuG2w=;
	h=To:Subject:From:Message-Id:Date; b=aLLhka3wxLrljO95bGu5JYaXDXr45Ncdb3eU/2V3hDs7tcIyfa7pqHks4TGpRvxnBjXUzUnROJU39oaUjGmFhAOIqBlRyrjvHlJ5dFhdBw7Y1bTKfx6G8V5ZDNmWzQQW1/xFKbmp6Qu1QjG0dhU6kgIDiBx+dGh1Bz0IxvMH+0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6/Lggwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6/Lggwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9CEC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784191113;
	bh=bA7WXfaYlNofDXbu4vNTOODbpGrNCQH5Hzfq7DEuG2w=;
	h=To:Subject:From:Date:From;
	b=t6/LggwgfPw5JtlDoW95efRogYlrM5VREhpj0vtWCK2VkPoYjRL2+zdvLNrjIqDE5
	 OaH3qgJjAYQmmK9GdAxZ2M8d6Snioga7ssw/QaX7YKQVL/I5VsR9BP71BtOa8gjcjl
	 Yd3I8k4tNNA3dx8CSoMD5sGr3qd+WCUxNi5OrCh1MJyJ3rpInJxkuCMP7EaAZ+NTkr
	 4ZLA9yWRJuoj0fakZhckB9DGQDxT30qRg63QpEz5ipfTVC1zkVfxPPy1lsKBdhczW5
	 sIuHVQYE8K7af43JT2FHNaWO8HTGfr7VJtMGJS4ggVSHax/F0232WE4khDHgzWeiIQ
	 OZf4aG7kzM2vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAABFC4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419111368.17582.9839377473693993113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397b17318b7b5c0ea106e2ddb6a064a08114bae3022e468924dfc3b4caae6b91
Date: Thu, 16 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784191113
