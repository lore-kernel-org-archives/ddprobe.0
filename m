Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24D063C0
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7577CC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669824654;
	bh=DFiije3nkUbh/Hovso+ujINdvIWTlz1UM4VJAF5xgKk=;
	h=To:Subject:From:Date:From;
	b=AMB+uDrbBd8wMvsbrwIYIluq8mN3+uot5LHXxlql63Eyxz9L0uRB/dtxEjOxH1Y9O
	 pOLTqYkcWE7o/3+bZKbagUqP/iMmeDngs1uJT/fS1LrvJElPZ0Z2I3P6aSPqN+MYs9
	 1La54DfiHQwp7RGe1x+0Ll7z/lrTbFMoCet7aLmamjiq6r2S9XFVXleY9BMwCt1TLt
	 TOqr/Xz1JiMKJ6Au/Gh2OL/SfSpjdKKTweGPbiIEKryXjLwipann/ONaGMQdyn8TNs
	 B2/HBENoDdcQzOp8XHBITiIiWV4tulBj4LqUKF0gOhsx7K2cVVr2uActvv/2T+kJnG
	 LfQ2u58Ji669w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56120C4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166982465434.16151.6812810160249456706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8370f31195465e5e019d9fd1ea41452c8214bdde1085317f935913efdf8b30e1
Date: Wed, 30 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669824654
