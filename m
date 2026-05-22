Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A55401A1F
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779460354; cv=none; b=qK4K7SG62eXMk+dW1Xm0JVG5dci9TALi5bNfvrSjcK2paVAcAi2foxH3MrJUT91rSr3QHNmBzn4hmoskaSKJLqq442KibS/67Gg7fZdYylqL36lxPeAsUKGn7HfDpdYmE7KtejllHAorpN7H/kXBBA3Lxr8yeH4M8E8Z1KK85eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779460354; c=relaxed/simple;
	bh=aMGPJ8Q3NVvE6g28rmi7KQgixFKfDZQdAWckmMBeHwc=;
	h=To:Subject:From:Message-Id:Date; b=RPs3h3srL9qa+xGf7YFFvpiaJqBvQCEfrP8b4j41if1MH2p1Z+Rt8GlSV13ZSLOgJwfzuk/bV1cGsoKHXqT1XX65dYPMolpJ1dksmIxkYkesNCH/hvyy+NXTATYoBSa4dQNKOC730OCwzCz0AKJc2vb7i1ZWxq2qdZQFDBp5vps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJ3G7H+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJ3G7H+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFA7C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779460353;
	bh=aMGPJ8Q3NVvE6g28rmi7KQgixFKfDZQdAWckmMBeHwc=;
	h=To:Subject:From:Date:From;
	b=GJ3G7H+l4maaiGE2mMzQxEJB3pwOeLJErBiDGzagNrphjnq4Pw6B4t3ksPE4cbk+k
	 v/uOJ+Qb1uyqIFDWRB3tYB1Cg38umlUEq9+gT0X92imj3+t7R8DBqw1n7y9HABHNL/
	 nvaQMZQAw0uuNfjraL5fVMfdApLhdJCQsFl0fwV3YVKLI1K9aLtz1EIyNJLkYYjKmo
	 r++EFYVS9R2LMtgrodleTDYdXCdkx797lVqGCRhe47SUpnYSBETQWiA3U4nHDRtWN7
	 lXqBKOF+TzkYbzD/4JII5jXhxRyLYkWwxvRQJOGxtFiTdjgFdUXMvaiZztW4rHYpJT
	 HGy9giN19uzQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EE4CD5BB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946035368.6898.16855800419831433897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795ba6eee2a18fc897db06a87ad76ee3eddae50635491459f20664a4bae327ae
Date: Fri, 22 May 2026 14:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779460353
