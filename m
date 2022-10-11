Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5C63C32
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A408C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665511853;
	bh=k++qy0aYbvz03nZdMuXILpWjbA9wmOZr+F+EVfxTRmw=;
	h=To:Subject:From:Date:From;
	b=GpW7dk8zWJtODAaoqOsysQy/DT6ko/LazVBEeWoELhrXmNdeDPqejvThGLx/kANYV
	 ZFnMgT8ELptvtgdTTFjUhYgdiKZnqsnpzsyzWgrco9I0/a+AxTQzI5+SovaZIZWpyv
	 rCqL3oAEI86nuC1E+VyHbpbxdMfQuiXH7y5qtAJQvPQFQji/w7+DFAwyuc5eRqUHok
	 KGz9Ky4TjDEumT503QdPr+rfR4mKLv5K5vit+JI2MHe/HGIq23CMe2NR8mkfKmZwSE
	 RpNQjzfUXy67ovs+F27Jy8rmIvTDgGkfT/BlANoP/vt4cKPyHDdRTrIP/PclXHfQ6D
	 LyhCXBprtIigQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 696B2C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166551185340.4275.3354747906489534763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b2737cd8c34d164dc101196440d5b6885d4c36b1730a856a8ea3139a17a1f4
Date: Tue, 11 Oct 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665511853
