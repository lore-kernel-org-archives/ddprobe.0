Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E09360
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 00:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717113863; cv=none; b=WgXZlpl5QuJMnOHtrl19q1sUGkhSk9OZzDrQvC7Op8FNGGWZ0zlEB+owfscJApaiaUtD2nTgWojJh70N82KzGJdNDa3ozEnEYjUU+MCJP6RupzC7GfZjbcVLLzU3joRzd50npOCb8LynjaVXxyZYm2ZaXdkqCdKcVSayFSUYz7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717113863; c=relaxed/simple;
	bh=w5e+FMB5Q7S+TtnFuJgpTz1Srhn5Eq2VYxLu1zTJWCw=;
	h=To:Subject:From:Message-Id:Date; b=nn0A8miFzN2HNDORlSNdUDmXqbhIWYsfjNbyYQoDG2Fy04H2X7nhTeJ3H7qA0j7gPGnBt19gZ7nAjcy2+jnRXByI1KbxAMngU3JmeaxcwQndmWmOWPL3bqNr/TNq/v8OxsUdsxFkJ3u7LdYTozCYtOt/OepJbnIraaFLPwYemzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pURUiqFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pURUiqFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D561AC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 00:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717113862;
	bh=w5e+FMB5Q7S+TtnFuJgpTz1Srhn5Eq2VYxLu1zTJWCw=;
	h=To:Subject:From:Date:From;
	b=pURUiqFXVUW47pUQX4cRKOhHXllaENA1eBNqSLEfRrKJ8laR2HsRusnxNsXs2pSLC
	 A4pZkaq7o8xviRw3Bt/dK//GWJTuRD2zzXEJ6ZzN4YbOd9i5xmWCnTt0FHg2GD602K
	 D4EYcmwUxwuTwruK98X7NLIRCWNJ+WCQ3Sib9IstDFeStJuo4ravCBu7J3PCaIKTjn
	 N1qjWU6LYznWnIfS8f1/lPGMWXbvg0x7xRRuShX12Qc2sojRLGPeq6QVjxIu7A/Dpq
	 8eshYJlf7Q2ZnuW8xeEwJzil0csb6AjOQgfW8AlXlJrHLFBwVOKImMiq7hfsWa1npu
	 IwWRa8aJJxdew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEBAC25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 00:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171711386275.12659.11963729660611311428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1301fa51ef63e272cbd4f85060be336e690d8b52eb3d1045eb21e55cd9240920
Date: Fri, 31 May 2024 00:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717113862
