Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5609547F62
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 08:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714207943; cv=none; b=dID2hAL4yi34AsmzCv7/wyXOqAo6/zOWiQPbfkX1jtK6dcuvBqWHXoF02MCKcNkfyE3JFWdzJfzbBYwbdlayVvIXXGwDxEhW8z2yL3QEcAxEvz30xTchQA3PyxaTEem0+GAPXosUrUMpcYusZsnvm/vGGFdmcTpmW3FejJ1lxFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714207943; c=relaxed/simple;
	bh=TWzWmx/oYn5+X8IhudH5ROTqmEO3oOyzwNMOrg/Lk0o=;
	h=To:Subject:From:Message-Id:Date; b=tB7h/LLRzAQFTqK/SL2Gp64v3Nsw6qEprB7dBw6w2spQHK7vsDiTJoBkAudJ+ZJXGXrjt4Kb6GqF2tvgbYzbPU+TKoGqnIiwsDCHxjRbHYaVh+ova6j9wWwMTlbDV9Gheq6RDorte819tDeEVv0E5ejD/N5HfsDBSSjNKGuYKW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdxZqb4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdxZqb4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D790CC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714207942;
	bh=TWzWmx/oYn5+X8IhudH5ROTqmEO3oOyzwNMOrg/Lk0o=;
	h=To:Subject:From:Date:From;
	b=PdxZqb4F83M2xEmdwNiRiWp8OyIBNbKzYI6o8IE2OEgH5M2VMTB99yhdhlUBxb4XT
	 A87n5TRuOou0hIogIWgRH4oQvRsHZA/m2uV5TQt5+oMrmVXIilUuT8W3GlGjjpD4bZ
	 dZio9oB3I8ZY3aN3Z2La7ORCKpdZwgghMm3zIQqBl5soLlECN+/Chnig6zk3NKoV4N
	 /FVno+4Yi2eYWEPzli+1rIRUB+oLfN11XwSaB8ceww/Fi6YdpKHAb96IfSKBqf4qRr
	 VgwIb+zlqPuURT10j7eK9fzb5x/aivuEL084TwaA+XIuaXoR2VHAaGIF5KFBPtuq6H
	 tAEYRgK4Hgd/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2640C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171420794276.24175.779108989843473828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f709c314e9b08b6e4e4252b1a1595955998527a70c8acd4a9a81f3901b8d8f31
Date: Sat, 27 Apr 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714207942
