Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B951C10E5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E801C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662088853;
	bh=de+e+5aaifJ0kjJDzmHjKeAoqama9InA1fnph9MdtXA=;
	h=To:Subject:From:Date:From;
	b=hG/cCzNtfw6e9Se8T/G0IuenJdpIdPzx8Eg38tQkGMu72odPuV6O+ro3aox6wzfJF
	 0h+6vmiIEgT1fXKW5XITY0MxxKuAHiRF2xCqVxxzqmjnPd3f0OdD4MfMupRLahLMA0
	 tEApTOrESL3Xwrk/rLMCnkOMqjy3dQ+LJQj+4Jy7z5LSbfHq4Oc9jbaVJU4Ellx+qt
	 BAnWFeji4Dn2shpot9a/tr7BtojRSIAVi7VXDjZPoobpz7m7OcaO9tQ/Bssl+EA7bJ
	 a9sRcZu3i+geR58kSvn92Lf8CtF6mtD2KS5ThLEcr7Isp11MPSu4XbF30YLKsd1K4z
	 x4itGBss/Hr1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 583C7C6FA83
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166208885335.28513.6460201401198714760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f87c2116d7f29508a48d6fa4972a02d3ab3d7c52848f7f4f1793a923ea2bad
Date: Fri, 02 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662088853
