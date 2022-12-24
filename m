Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1CF0322E
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89497C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671897687;
	bh=s5DKVL6Lpf2xFQa+tgNfxKiMM15OxzAR+IFkUdoSFtM=;
	h=To:Subject:From:Date:From;
	b=Di/v38lKhBr3zAB34cTJDVCbNpJsqojF+tnqU21dj4fx0jBKbWThszCl7AQHgtvx2
	 M764BxwD0AIABUPjuYO8A8jyAzdZOnZHPzFhaLSmp9xqSNy6sbiTvjEDWvSSUrzsvc
	 Jtb3yBrdyvsRveDvT0gDI3o9747lU2iOvNTlcoMw37Df7Tj09t0HnQ6YMopiH9rGxS
	 K9fBoMV/DXBnWUd6z96BVB8VDBeBmbG9sneYnR7lVmkIKqhfuPL5lngV2GoonySxk8
	 11zO0Sgtnjw6qyfYb3ZmhE6PGqc+DfASb567ukbtyzSZBy8S3HIzBv5uukpeJ2Ax2B
	 3RXgBMEkabuNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E4CAC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167189768744.12637.3878697302146332449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311ebbc53c93cb10962283c3683e81975fcd2eab39c54f90aa70109fe76bc77e
Date: Sat, 24 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671897687
