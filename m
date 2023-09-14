Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6306B63B
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 06:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C787BC433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 06:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694672648;
	bh=5LezxYFfnWZ5vOuX30Q28iHNy9EuuiDRVTYyQ7HBqfA=;
	h=To:Subject:From:Date:From;
	b=VY6THJAhUAe8y1M6zoV2HelR7Fpt9/yVJz/ptUSqEG8HiMSATjtCEekwnx/V9E3y5
	 4PH6Cc7IqysT5Iwf2ThKPQ3DD9E2+zVcMcBEaT5MupC35tJUoFdlSvfd+QdePfc2Tn
	 9xzCKoGDzMV0/8c+/szg1zZKI5b6gMf6y7GMKPdTguHo2q0xyelmICC6CHqYzzjnOI
	 fuRuhKn+NWxrBMe2vifV9goIS5CHeaIubXUEPc+x61xlvd/a82NkoUUnd9GRfiMQka
	 5dkRTKkebn6+T93AwuJR18nWUEkraI6RxX8SJgoYrKyvDM3nD8VQnve0JrcmsPwk04
	 Nk1Y0MBza9yEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A848DEDE986
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 06:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169467264867.29553.16325677381530866018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78bfa91aa5a2c9871d126ec572dc975e9209471c25d844a4caf287327b0bf6ee
Date: Thu, 14 Sep 2023 06:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694672648
