Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264D63C13
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 15:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7BAC433D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 15:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675093385;
	bh=ru1hYqmvujRzho2z/0Ow9aX3pX2C3GthNdP3z1l5MhM=;
	h=To:Subject:From:Date:From;
	b=IytYIaylvFTEMQK9qFywex+MRw52qeS3dUmYhVXVAUd8dYQVJ918nSZJPLBslLnqN
	 21RplYwv1cx7XW7VNmjQaNCIq6I2P8lOIeZU73n0SWcE2VALaCeTSgizZtgKHI2+xm
	 TvOK0Sw4Z/DdkqRx0m9woKE+4w1gF19UQB/BVX9zqpsIV0PqlToliHf02igMnQ6DYM
	 QMasjrD9Mq1Ju+BSFnmVZv080rygQ6P0LiF/RpqfE7rfev94yeJNAsHBDttoAEmV2F
	 I5AIMVniwK5TOgk/6iOUzC/T2h3o21BXhPsMXUp8HnRJuthsXse6AX2LKU258day2R
	 SFajUqMdOdNog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2468C54EAA
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 15:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167509338578.30496.5851734928457576861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76e889490b96af72ef7576830a24d1c97b7c3aa2256a2ae98fe3528ec745e9d
Date: Mon, 30 Jan 2023 15:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675093385
