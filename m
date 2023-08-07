Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706B5C14F
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 07:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E27D0C433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 07:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691393588;
	bh=j+uooWjys9P0nfOTd0vOKMXf5GbpsDKwxQ821Bq+KeQ=;
	h=To:Subject:From:Date:From;
	b=HRXz5ATnlC7BZu9UfGiuYEYEWr95HmNHm4tun/TR37h4UUOSTnkMomeczIn7b9k0T
	 6aira4Drtrob9q5DS3iOuYtAe/tKubgaNF6ENjcKYYF0mCDL0FhMAEVhBVvAOH5gfs
	 ycsI5eHi12LurLdocEm3neGREB7ucSRs+U8BwHD2st31rFqWwcoe4aMhlS1PXOjehd
	 v8He6N9X/aBJK2RRppgAnbajGKRpS6jPuzSgrxFDdbTWKtci1J9gOsg1fP7lAvsMNB
	 2vQRlh1ZXKTjqzKthJPzOogYTXcQezXot4fi74kGKGnAremldfvH/+wdeVV6L/f67I
	 yNvjpydj0+2+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF77EB64DD
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 07:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169139358874.25582.13999531987767118366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f955fa39f54ad9713164b6f72591b279a55174c2c34c8f737a03f86295e6b2c7
Date: Mon, 07 Aug 2023 07:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691393588
