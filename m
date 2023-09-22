Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6331110FF
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 06:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF595C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 06:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695364508;
	bh=uTXe5r3ueqAWFSwCN2Uj6S3/UfiFz+Isq9ZfNuW0lAU=;
	h=To:Subject:From:Date:From;
	b=OTFg8tWwthKr0mRmg5YJZm0hLgbzHp/2dJgeufQIoEsT+GTpJexz4xqTtnIyahC0d
	 HSUzJqlggOe5nCQ+2zlBvN0RNvQJTQkt/od2BgDhNrVypkBcxQnr8b/EUyascRNcTG
	 2E3c0sHC1keEWikqiH8IxCzcwzUNEAF5+1dxtTojWS4ujUVsx2JvG5DXnVWrNjFo6G
	 OlBw5fQAxpsI2M0ktASycY+B0DrzXjwZhDqMHxkSqWYt1XrIO95rOwdGD9ZmG6pSkw
	 ia0Y8CTJhUdiptzeV97nUU23B1fQSQmdFHX4WlBhJWgpAI0S1FEgkX0rw7WQ/p90FL
	 hDRMqAOD3gmrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF82DE7D0CF
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 06:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169536450871.28707.16608449979439973113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7473718add7f5285a9bb7d0c8cb69aa30c29e4055d72dfdd1a7a594673c1f3cf
Date: Fri, 22 Sep 2023 06:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695364508
