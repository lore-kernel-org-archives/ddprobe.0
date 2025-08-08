Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C805E2686A0
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754655593; cv=none; b=Lw7HbW2HKO+hi0d7E9QTvFzChc0KvyEIPjyifmc3zQzQgR8y8exbXa4dkSRYleI94vs0n6g/ocrJQ9bOBDhdvBU90IFSFPtfOioQM2wrPfWOVX0dp0Tysntk5H+Bv9i+X2Bxq/2E9Eo+zBkWVYZPVspSy/rPZ6KdkkwrC3IA9oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754655593; c=relaxed/simple;
	bh=5tY6+KO3mcbYuTbcYcWeYLQlT3LIg0/0y63SWPRkuMM=;
	h=To:Subject:From:Message-Id:Date; b=Qg+dIyxiSTZhDLH19KW3ly4z9EChRPHWlTJS5lRS0mFhkacgE+aL4fOBa/9wQJfoaAXoM5bmSLgCF0lSySHc//Q4MhdzWKfR0jEoOebqfQHJfOYN9cS80vGljcv5vMEwneIYN5S5WR2aMMMmwUPr6y2y3XF3K3MEWrDQ795Je6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0LlC6SO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0LlC6SO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC5FC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754655593;
	bh=5tY6+KO3mcbYuTbcYcWeYLQlT3LIg0/0y63SWPRkuMM=;
	h=To:Subject:From:Date:From;
	b=l0LlC6SO48dyarwy62D2/oR56DDGWVW5IxXZPbfS8wJX4QCwzfngj8ll9/ERa1ZYq
	 qz6Ju5ZXbUuAKftPts/mWxeBFw0vxOYYQ5UH15znqTVJyVstxCDH+DfZOcM4isn55H
	 xGUCCwiwRh6XzYmP8RvSwEH3+IvsOBiDiRdfUZvB4Tp4vYhjujTucjOE3/DvOfyYgu
	 zhMe/sm4chKUfUtgEIksZgwJGb7JEVfjMDoBTsTShmVi/PPDAWwDodufIIa23ffiyH
	 KysQN+HsXUeftKiAP1Qgo06PX1Z/NKTWEZWUwXM2JrRv99yqgpRiRetdkKLj8ZMRS5
	 LyWgeS9grtEBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBCFC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465559357.1231.3215655484435178913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 099249ab4090ccb5ab628212548dc11cebb5007872f6242ae6acfae26e2b42b9
Date: Fri, 08 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754655593
