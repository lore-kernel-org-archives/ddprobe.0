Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7C92FD1C2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781184994; cv=none; b=I8+Galx2GF5/qKgea7KOvRKpT/yxLSU+L1iOwD6rX7ESENudsW2/omfix5clHpKS92osv+e0qwOLmLmkU4m3/3rih/p1+dCG+adKwtjCBoirCAQH6MWXVSlSeTqhmRaqIhi/nhWYXWb1BSPM3iR2KlzFF29t8W+1t/Nk8jeS8k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781184994; c=relaxed/simple;
	bh=IDcSzXiB1LMpLCG8qbPOBA4NMbVfMzAiZ4SXjPrOqjY=;
	h=To:Subject:From:Message-Id:Date; b=EvJZJ6YPuxmb73l53x0W47PKpAcBKua7KmT+zl/3Vhz2BfdSnkbXo7VVASJYu+lW0ARmKhyV7PIeVLQSaeOaRz2tCbLmsk0RuG0uzLR9v+b7F9AkYp49Q9jJjQuaTIPUNQeK3Rm6rF3neQVswmAfAhLM7zbs5k1LcrGSpTiG6MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUDkV0/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUDkV0/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5ABC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781184993;
	bh=IDcSzXiB1LMpLCG8qbPOBA4NMbVfMzAiZ4SXjPrOqjY=;
	h=To:Subject:From:Date:From;
	b=bUDkV0/kU/dqOqQy9UJqPjgJX9UE5ieI2V2ibneSCnROuKLkLAW+O9r+3aV/sm0Zb
	 UCQKIiBkXhj6e7vYe2OudjuhJA7nmBNZNvTHgBSydae+zHAmu71f4pGtIgikxJNbmo
	 9sQiT2PSLeYqreMsMjN7TXkUFX5hIVao45bOKoQ2KG3cXbCDYzp+h7BdBiFM6Zi+RP
	 wpcyguvbyWKNtTqh+zKJBkP4EBSRMjqOH6bmDcMlThofal4hNkw7bx38JnJ+r3oTF3
	 fDzcxnZi9ZpfcbXBzlhkUvi6x6lcvcCe9KT3ROM8OE/47P9BYdfXgcQyyB1vL61gFA
	 VOwtM3QOaIr3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB79DCD98D5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118499369.2655.4539566469071322659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9557f1827d515ec83cabdbaeb7426f5324c2962c9fc720057eeed5c5fb133096
Date: Thu, 11 Jun 2026 13:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781184993
