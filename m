Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8408B17C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 02:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF199C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 02:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693620848;
	bh=OLnFIFD5I9JMegYxxLKONsbBr2kmfF8cY4w99kq4hss=;
	h=To:Subject:From:Date:From;
	b=NMUEq61Eq+Rc+lVhTvUsL97yt+EhrPRyBrthvZwUvurPy9tTKKMVJHvJ9tcq7MeaM
	 twpuZP0ym+MHcaqF4BxOsx4DtDgo+QhVOEHyzqL8stF+H5uM2+/UfP+/0JhvxF/y9M
	 Z3Dt46gSzEiGYOxMMSqDhWLT4z+/fXRAYR4D7qlZOfaaqeXkNRwrCA3CyrUN2ji1YY
	 2nk9NxPwfM415+jqjLkWUSR5zs+bA4XybmeApFbFUesYTEhx/gMZg4UukqW06MSS0K
	 P1W7uYaBzPijenL84hFaSZjmb/3TADwRbmmaKfw9CFC3QvvdNZ4Mj4SkyY4g+nts2V
	 YFox69mS9vHqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6C5CA0FF6
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 02:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169362084869.26765.13605828761018738198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f49d30b344e691caa8fe39a7297193e6e8b63b930e795337d7a0c4da5fd528
Date: Sat, 02 Sep 2023 02:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693620848
