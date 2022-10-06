Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE7E7F6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6697EC433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665055253;
	bh=41t5ttGLGEi0/ll23fBcpebsFx16xDgtHT8YQKuoHoY=;
	h=To:Subject:From:Date:From;
	b=rNcT3yzMdJZTN30o8LaZ9W+3lBXvw9asEUE/u/hl/oy36ajdp/NH4drBbku82RVHS
	 DwoaDEguN/j8HtoN9nP5qGem9a98Xa0w1IBChrYGpuzwkeOIx2oQaa09vj5W9VdCWb
	 HOYLyR/bewoYfBpSc9peLg+gg7b5POMNFONQsqJT9v40jM1P8Qz6HuFIPvrcDgc03J
	 AmWgc/B3gC65ChLSkkdxgPhAwDR/nh3tEU+bjm4ubSVtgH30RfOsWXV6pvpGUyoW8x
	 oQjcv/tednEO0vVQZnMuCB0egG9FXl/vQLaSYBtzNr3GRJxfQRqAt7oOoLbU25mPtp
	 MfIGsozE4NWNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ECACC4332F
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166505525331.24532.9929040892004740606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b54ffda43bb7adbf1ce4a8408edd312574d2ba016b4bd5b92ec24324df842ad
Date: Thu, 06 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665055253
