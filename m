Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673C31FAF
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 07:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB92BC433C7
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 07:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691305388;
	bh=GcO+hHy/Tr25Jr+MRygnk2kdK9XPf3OaHs1C3Rjkz4Y=;
	h=To:Subject:From:Date:From;
	b=adym1HKMnFVJBtKd/FN8+aSezS+dtRunyVBdz5NIe2cCou/w4dSg1JzZNC2TVmbS/
	 a0IK63w3EhS6bo7JR8kjNw7clHAV/1lUqD9XT5N1NqUiB5SRZthE1hCB+BCD8xe6ar
	 W2zm3bqrSL85yu4SCrzJgN9ZpYL7fWY/2X7pCKFPcBnipNQj8fJyi5cxJVTUcTFd3H
	 JxXV0Mgv8VqLTjW0WCZItfNz6nEXntu6od3OumCYAmn/CAePNZjMnajY3ekrn8XX72
	 RQCJABEyHRN1fw6pFjC704DdTvcxbgKl/tqYDs0L3fH9BiXopwwJDiDO1HLg1zlOnJ
	 9zHsF9M5Dy+Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2BEC0015E
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 07:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169130538873.12217.3134103540925901550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c0d3c196384ab4a54823a3dae60c46f8d12c011dc2b17fc4ed7269d2c4a9ca
Date: Sun, 06 Aug 2023 07:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691305388
