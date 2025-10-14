Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EC322615
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760401794; cv=none; b=EUPtyzL4INwOxVfwSKb+M9MnvM/rNE3w4YOls063exUfwR0sfh0mUAZA+yv2+eXoUvO7KIa/EKYX5ol1UldWQRevDdo4oXjUvtnlabzVFQ2Qk71LBE/6u80dp2dc+1Qqo1RcCa7J0X+gYGInFwiP7g1j4udBYMp/quyX7prESMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760401794; c=relaxed/simple;
	bh=HrSvupXzrm69gFRX72dd9ANtH7ZJMoHbed26+I8OTQ0=;
	h=To:Subject:From:Message-Id:Date; b=NNPLoq8M6piyAtTB9SvyVeXv0gHhOKWGeafYEOhgh7oC1AIUPlzTWaJYBSs/lLWLMgqC3S9/Q9ZUTrm+1iM2AinGagJMi/q7jR0jVkKEg52rcwfSACJSu30pHH056tChDINtzTthzYYz+Lxe3yEbjheG2uOYCzLdw83m13nR8Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixmP4DB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixmP4DB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16D3C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760401793;
	bh=HrSvupXzrm69gFRX72dd9ANtH7ZJMoHbed26+I8OTQ0=;
	h=To:Subject:From:Date:From;
	b=ixmP4DB7PkPrdLLs+68awMoHp/VR9xCWUuqKaW8ic266AT6gKv4cZCKRlWftwgvYl
	 bAFktO6s+iPh4+mUF2QlqC0RuIyela5Z04Y7Hb5fTbYGMm/aO+oWCHx3ZGROB5tGCn
	 KXDYR+iYoejLlZkMmsIC85X5fUxlEkJQ4/AM8f3Pe8e0b9AZjpUj1NaI8TZTGifsBS
	 3/1WI6vDRG+ODzPeu/uMM45ClrPgdQLOZ8ux1FutHsuqPrKXfVPKnI9P/F0tLlCL1r
	 TENjOr9Bwre9yN1u3CB79p7OYIKYY7VVfVGKFeI16kDR4WPzbL2Pfu64JJTVJHBOfg
	 N+mZSbJ+0lxuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD0CCD185
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040179358.13955.9153675349513942248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648a83cfebb81c334682a2fc66746d22876c2c2113ea6beed1ef296b68885ac9
Date: Tue, 14 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760401793
