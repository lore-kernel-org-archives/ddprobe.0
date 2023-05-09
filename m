Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFAC19918
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 21:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1BA17C433D2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 21:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683669066;
	bh=whEutnFbogpREVKYlEyryKZqrygVcyQ+iv51Lri0qBk=;
	h=To:Subject:From:Date:From;
	b=IcnyWfqL7EG77tXVYmDjPuyfegGFTIXjwf+/oKESmpmcaOK4XgmBOScRaDedYUB8V
	 XooDmDJmLz+T0GVZx+f6HZ5zwjhJQusBF4X3FwpV2vbkW1TayKBORiAirVEeD7PvPJ
	 t1PtfF8vvCAHzYpVgdGqin1BQLjF7sxLVTAMUjWULGOg2jQaQllrdFONHPb4Cu7AVp
	 KaEWfLK1bFPApDsXefp+wZaVP8GTmh7mfX8d0f/vjnDYxK1dFBHqzgITFssrIjTJQF
	 LgeEJArgJ77k4rKGD2ANeXChsa3Q1dirt8+lfwIW4FiECyNBMe527p6lVVVeSDgI63
	 ksaTyelw0YyUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9730C77B7C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 21:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168366906592.21157.15853562586860748228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c300c098268ac510ed7630a92d56b6ced879d239b348236152bffcf866c26de5
Date: Tue, 09 May 2023 21:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683669065
