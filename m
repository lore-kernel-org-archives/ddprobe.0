Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F21A48
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C84C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662065453;
	bh=coAOD7Asg7r9y0gYtcrwa8HOeE935Y8tPrBpZ4VLfRU=;
	h=To:Subject:From:Date:From;
	b=UWMiGHSHpdFKnXtfihtzbLp+107AvnhGx32LsU0kItR+qfqiLPdkpLXODIN1+US29
	 d4Af7KXxGpOPK4llURlXasWhiAA6GBLZEwjjVgOcNP0PRTKyUklk6GUIzR/cKOTOyL
	 ubT7mB/EsjC5taQI8C+85t+1Aw0H4W72HzcUBif/UmSCZetCkyM4ol1+Zp7NxvT1Vu
	 G1k1Mzj1vf3j3mqGVqLyOy4Td4SYJwxdVrTHYkUHNWNCmJUd4yQJ+71YJ4GxnIlgwD
	 xHD1kmdpPej7c+sWXMdJHXK88iGxpe6tJnP6hj6NTrx7h3DGOeQ2huBgs45ALRWwvL
	 kJTFlVJgeMi3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63762ECAAD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166206545339.27824.11751656053512464234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec5cb424ffc4f5d5eb0cf5ec740652fc496877f2ff5d19824bdf7bff6e6de0d
Date: Thu, 01 Sep 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662065453
