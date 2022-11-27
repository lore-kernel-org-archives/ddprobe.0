Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C684C3D9D
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC46C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669571454;
	bh=aYHeG8fQ8Pv1/oWHnq/NUnlybl+IHPp2r/bGiONKHy8=;
	h=To:Subject:From:Date:From;
	b=rrDz3AkTCjWgUla5x6p9hFpqKJ7k4ndrbZ2x+ffccjlT7JW8FXDTQ4B2cUos6U7bE
	 TpwaouC4W937LMteAUxRwBXAkleMZCfnDmZA+PtKLi8A44J3l6Qd0nrsCbHdRz7XAL
	 JkoETjjqBXMvSOMWwOPmgv+a2wp117ydUbU6/f19mrhFy0mwIGjsvmCdbVk6hSnTlz
	 +X1ILA/VHzcRNV8oKNd6+nSRthw4ymHaukW2lm01LiBAqcp+zdsB9+8P4kifHPm0Y+
	 6RTW01nGQ1hO6nIREIjwAaOjfwgPGPsZ0MWuWLsfzy4Uz749wddqjh20sS8FJ1OA/D
	 7tilSCWuaeZxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51268C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166957145432.23537.16905594833169936700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc797de74ac1c42a67860d34f6588ec596ccc5e190b1c5f8a0ff6854882f7b3
Date: Sun, 27 Nov 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669571454
