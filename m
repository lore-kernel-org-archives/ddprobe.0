Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34604416
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB48C433B5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662391253;
	bh=rKP0r1F/Unud7091PpTXENfeVzWyFooS6Oi078I83jY=;
	h=To:Subject:From:Date:From;
	b=mpoaKD/U/fjVNTibFf9iiGtDRopKDd5zMnnynfvxNNokEXcT7DNZuUybwG2r4c5J7
	 8xLQaTvut0iwMywE88x4+XEWUvGq6blpo1Cghs83b/Vw+EGouWej5s3/jt42/pmKEn
	 R+4p/uAYkydTRROMNPXlCk8SG1Il762WbH5pf5Ggbx58qWFuSDU9RPDg0YwuyV//zt
	 T+SqIjeqOQxO2Gmq8HI+Oyg0dtqTDhvS5VdXOeIxltG4tZ4j+JH3ZVDGFEZZXyl0p+
	 6DTW0BV+LxLaeTEWhySkGBdUM2POh7rLIX7eciv0+gY96fkOHn5ePqV9WyeQHu7W+K
	 2xsvA8owUrZ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E72EECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166239125331.27441.2416020440004058230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e674c77bd459a879c0e8e11a5752fefc701db5ebf452e8097d4e8c1f66d414
Date: Mon, 05 Sep 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662391253
