Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238C818024
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758501594; cv=none; b=snZHLawpvyeVXDmkG3Pj9Hh3F3QnJs2dMwMaX6v+JqBiXiYrG24XvytGzcrLeNPxfx9z0Yvp9m4IqUWHUbJGWHRfnD0WcFLQCy/wSAqyruKE7XAySCU/vzo9yG5LktAdAtdKFejmB9TzzVAGtK22qGlJ7w45jDq6qS7Hb9VjKRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758501594; c=relaxed/simple;
	bh=I9Ux9XJZCEYyhaWfPtrfC5CxhAvitnT43N//0vWr0Z8=;
	h=To:Subject:From:Message-Id:Date; b=XJmryVhOmPc+iIO4/0qvCA5dm3gBVfccIHl8lEklRX4Ks+VJX09zl7Q9u+SH8DH+Q1r6XPQVSQ6Nxz+ypY+Y8bC5JSVShleBQLGrF55b0oDXkZ6Hg5/ymzyJLcB2dP7pQYgqSN0oknWo3QW8tviqAwgNnzr0VWlC1ah4G8tCrJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0aA2Hd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0aA2Hd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A956EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758501593;
	bh=I9Ux9XJZCEYyhaWfPtrfC5CxhAvitnT43N//0vWr0Z8=;
	h=To:Subject:From:Date:From;
	b=e0aA2Hd69vl6FnaJFTxAweVDlH3TQUCo34ZJOf/syvl101qQ0m5BzlNI6zp5I06gb
	 ZrcZaMsuSYwd7bgUbjBee7RrTbMCZnE8OuNdz+abJTxu06YdJyEPSKyMnjx4KvKWUg
	 DqzVxgPxqhClenvgDrZ5ezr9Vw+QjWaF8pGRPoIY79CDXmF9r6EUb9+VaPFn4fCDeA
	 8H4YwNGP36dREQ+2j2T9KGxWbnYq3m7O7y42xYLqGAvveuvPfrKXQ0YvbMhmFbKSpO
	 ZwV93vAvbPaCKpkGoTd/VlfV0YwFBJcjbmjRCsGfiBY1V4OJCMeHjit/3/br77x2y1
	 D5Te6RMXUkIzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931FBCAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850159358.19253.5213546992118238113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2660ba7f4443f1a1fb2e7533dabba239231449ba980bfbf1a0926699ecadac8
Date: Mon, 22 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758501593
