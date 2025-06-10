Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358091E835D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749599394; cv=none; b=GsJGFlkYwvUsKZkNx8Se4dRlxg2RC+pNfBPNtu4Pwcj2NVHx2nw+evO1US6TYQEsnnq4rtCh7oJQc94xDIDaqCUdcg2IiVsVBt7iy26RwkQIjqca9HRi8gjarya/dPNPE7mQkBPvUP7a8s97M4PHdNeWiUG+bxqD2/9u7RHUTks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749599394; c=relaxed/simple;
	bh=4Fq8nHIYj+CO1mVLJ2UgalgrFk9Po1qX0Vtfcg/cYGI=;
	h=To:Subject:From:Message-Id:Date; b=qmbW/cqHRunfC5rsFn5+/xmcLHfKbDBvg+YpK8FgIhLBq7L5+67vFk4zCt99sNDiQFCzrzRR1LCZ7kO6HIoHNUZOBB5yAU8s1Sm3hi58kXAN+T9WnMMCJa3bDVUqMYNCL8YkPqnqNlRwBZu5XnpHQ53TdLB9tmVSmWCiegS0Tew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iy5e2RPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iy5e2RPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FB2C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749599393;
	bh=4Fq8nHIYj+CO1mVLJ2UgalgrFk9Po1qX0Vtfcg/cYGI=;
	h=To:Subject:From:Date:From;
	b=Iy5e2RPWq8LmN2uXLj3ryyYnChSEqIEGDf7fJUvp9pdvuZvREWGzRyjiGYIjJrVW5
	 5tDrJl2w+kSlBUPpuIMIbWZgFIGWE7idaLDlptC9N1JgolJ1jtDy9fbrZLKZukkjR+
	 U2A793gHj6KdEiMeZQakB598dMb/MbPYutemR+cKB7TWTlV39soZEUBw10MOFvEPAA
	 eMkDsuymuQjj3c2WTgRtmSCN8suJa8VPHoBalBfCFWevDEN2tF+eBeTNmQv9mfq21f
	 d/P43yO5hCznzIYLS6EH9zvo74NJha9VXtyWkrJefSkLPHk/dTTNSZz7rrtnsi94DI
	 b33up5jnNrg0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A8C61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959939358.2121.1266445959407771748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141a6ac43313bad0a6482f3c1a1cccee842df6e49823f9f931c11090b926cdef
Date: Tue, 10 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749599393
