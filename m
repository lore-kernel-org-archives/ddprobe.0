Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC7D344D8B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781118994; cv=none; b=hm7nWiPS0ITUBoaEdJJjaKUpZsMX0EwuwAmWDlXQKwB1JC2GUeTdlotqZsPeyGIM4qgwMQZMD94F2/1JRfxjPcthuswTszVsvgCD09RZRwlpMdfnMLnl8+D5PIKtLXxzH4toB1NyFPi6s8IR+FG6tTjg6SRYzd65VOM/NLqZ+Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781118994; c=relaxed/simple;
	bh=NYuTdgfEKUxuRu/JELRTfxyC+Eb4+vPfG5zF5bb9Huk=;
	h=To:Subject:From:Message-Id:Date; b=gxGHDc3q7YMnXSKEA3DGDWi3I79E5RMjYl81Fv5ZsQaVUxhWvCNq1fxPRfslpZaANv8oMJYzD2OsaM2mAL4N5VcKVm7pZ5YW5qQNkduLDduC3QL8XvCiSQLzz+lqYy5F4jiRGTSGJV+QAj5sJ75OEok28MN1BRnX8jYp7Yz+BNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+aJzqwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+aJzqwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4194C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781118993;
	bh=NYuTdgfEKUxuRu/JELRTfxyC+Eb4+vPfG5zF5bb9Huk=;
	h=To:Subject:From:Date:From;
	b=f+aJzqwFUqYfTIWmUXP+kacbuBDLWUdqmIeNzS+vVuyEbu0NlvV1X5U7pqPLaktc2
	 f0vUHR2H4KdTJtntXkiICUnkjkhSjCn9bSPSF6DL7RDezX6D3uq7/irTOzD8K4z+CC
	 S1UUhDZIoZU4i5YhJ26fwUj77Tg7cpUlGcRO9wI8cuYyhCH7JYexc9NPW6LqN/xm9J
	 SItZ48m6ygLSY0hGWTWdIBBsp7lvybjju3DnMemDcLqIr0i9LNdgFHlk9+TBojlsqX
	 EYwCmhufG5oSb2xYapFfeNPiEz2ETDOTKSoEnZD9r1556xJSC9V5OM2rEv7+HmnHsx
	 Gy7ddfYhaZ1QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0EECD98CC
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111899368.26851.8316568095395901497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805445ba95a512f923fceaefc159eaf1642622cbae943d259c733fe4dc6098e0
Date: Wed, 10 Jun 2026 19:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781118993
