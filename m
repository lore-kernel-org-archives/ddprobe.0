Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F377E1
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 02:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D4DC433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 02:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677638765;
	bh=JdDQq6mbvZb/iXYd4PSC66UdNrm4EManLqpJyux1bH0=;
	h=To:Subject:From:Date:From;
	b=D8IPChl/UNxxs0f1jEpMUuO1uUNoQt6TKHqtzlCy5dfZWKATm4fapHvYZI3uuJD5D
	 R/fC88xMYlxEHSPIIsbsfqX+t+PdR4ONLOrBJiVAFnfU6SnrCsdKZe1QKyrVNGF3Yt
	 8ujZJTFhGaKDuufvR/eg01ah04NF+og23B2sXJ3G7C+7FCNx0NSEtbVRWUv/ByYdMQ
	 +HCmhPXTQMg22s+zv/ZX/JCP1TjzQWZVYJ2IMJeMyBAnv2BYTv9lTDPV7M8JfeDZrc
	 oE10MAb1QJsOUagUfy39OhONjV7WM0LfPyUVdoC4gJWhN6G2XbR+PCFCoqZlWdEHer
	 9iIIA3BhP2dOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F8DC64EC4
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 02:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167763876574.513.8148413404144814027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67276414f46bd186d17f9b6e7df7816ba650f6bf9cc3cda5e81fd7ee0aa7cb1a
Date: Wed, 01 Mar 2023 02:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677638765
