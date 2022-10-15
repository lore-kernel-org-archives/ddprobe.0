Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C834436A
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74598C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665843653;
	bh=WiF0pSf8asQRDZViSIZ1KZNTGU0SahkgHTa9I88+SsU=;
	h=To:Subject:From:Date:From;
	b=QAQAmEOvpQlrYi3Diqp/wdDc4ulcEOMbh3Qa56E5fVCwNdenhehiL+003+ZlNrOWz
	 IbpprYcm9b5tmKHz2tD/1jplN5Bdy0mV1iP3Ka0vess7/tzP/TyPqEbIEDLHWAAVOh
	 RE9Q0sXHgs/D0KCtlaDjS+e4e7nOakyTfGBM3LOVxE6mB7wCdaxbzI2q3CF+HzDn7u
	 luw7cWdQbsnWj+fXSAT3EQ/8ZcZSoN2YYTel0V8wB5fjE08LpE5XMPm5wJrbiPPmQ5
	 tX6xKLGxaamjbGZVqyCiC+YEsbbWU9RhVHujbVI1819tBYHjKc+C1jt1pMpyPue6Pq
	 VPqJfWuxhjE5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E02FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166584365337.1738.1077431781426004286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1946b2c616710c90271c3ae00f54e6e29d933543267261f84e0c948020e40c
Date: Sat, 15 Oct 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665843653
