Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89027E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CCF4C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663576253;
	bh=n5pRUOtZYKFyZ9Ot1mQa8Ckb4XpIgc0TS6OVx6x9Jic=;
	h=To:Subject:From:Date:From;
	b=llNmVJipip4gX5EfxYXlVIK0glmdDncEJP+436zOdILXNtTuGQM5I8nKhUFF4Gxiv
	 CHh6aOxwNfFMB82kovhPYrFMUzKoSF+MW2LNqJRzvnytkAd6mLZ+uqZE/FVqJepEA9
	 lvUbfw1mkARqKegt1njmk7t9ssXtePkU1DRY67FC9n6EMd1elJq9eeKbbh8/02xGkt
	 aukVm/YePZFY/i3KWfpFOFIFpVwbqOpnNLm3IQ6YUTd6kqxc4rFpxwmoD2DKFsiY6i
	 lDetuzfirIl/2Njb7N4Z7TucqEw1tvdKPAxej3s3Yw4WA3Z2hPhbKKsTkzOXaU6hdn
	 tT/NoQRygRn6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57804ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166357625335.24428.2959898347414378528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6c1062cfc68b86fa4754a9b5b3d145f0d302db50dedb3dd0e25d7eb6895da6
Date: Mon, 19 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663576253
