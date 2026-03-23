Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D161B3B0ADD
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774278293; cv=none; b=OuekhqFbFtNGiLk2vAWsVUsr2SpGvC92YYdOyFRSAjn7WtStf6BvY57gN+USc39/VsFfj1gcGVvVPxSPmOENNpTWcvEegQgvXrliPaAtIa4ZEN0tZI6T6NKCJVCv0273/onnryrh/8NnH8JnFfNgCIel3U8MlJLRkc4fXHkV0fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774278293; c=relaxed/simple;
	bh=DKeyMc7UKFXFNJSHT8JVbhq8SRsj/LSFsd6HmX+DJXM=;
	h=To:Subject:From:Message-Id:Date; b=EYzJ/UEXkwHSYkqvD8Yfc9o68zrwZ4EBLrDcxANnyFNLlqzoEdh3UrnT7JkdA5NRyeS08s7GbgSQ2FW8tWPPwjxWI+4RoAHEpDm/x706wR86k6Lb9RFstVyMvCmvyIyyPO7FDudpNKKZ8i0lkvZLH2OW/AQ0vxyRRV9u/XEb+3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpPtk6Nd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpPtk6Nd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC793C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774278293;
	bh=DKeyMc7UKFXFNJSHT8JVbhq8SRsj/LSFsd6HmX+DJXM=;
	h=To:Subject:From:Date:From;
	b=MpPtk6NdcAhlDG3BKh6fROLfg8l3J8uMACr97jqJ3aygUhIRrTjlERwDvGLjZQgT6
	 NsHFtLS3Kc0lHeaK0o4YDEScRtEj1hB5RQQ01CZ4ZZm7BVWf4M/l6S5w3BLrGtqur6
	 5tk6vPRYnL5rbqDrNAf4v0+pfTR+MGoI6EAc6EXBx1/oAKmgw6iqjJxKrqWOL50thu
	 0qtvPQVVD9h7zCpBIO2G/NsJwS/mYK0VrNlQli47pqW+JPZIDDqwcU/Tb+qbS20ng7
	 KfPhGiYAJHSbJGvz/vv++iWfJtbSDpIDvwgyxjZ2LcTrgZz0G2igubhij8WHy9BzOf
	 Z4sVXMwq7wW6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99852F4613B
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427829361.2224.5190446918807742777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba5f6d0f80dab07ce48a01c6058307c90682070e9b08c232439d26950b53f25b
Date: Mon, 23 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774278293
