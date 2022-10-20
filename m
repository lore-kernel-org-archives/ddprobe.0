Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0437E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFC7C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666256453;
	bh=PrI2D4377EV4omnMTs93pfadkYBI7Ihw8lDbwaXh+1I=;
	h=To:Subject:From:Date:From;
	b=o90kpltCrqUJThP1mwpH3h0g1V04w6FfWwJs+KCDyewlnScEF/zpJpJEJEb7aqi+G
	 JNvGsc07Y++kOfckHf3+hakigXaT00wLSc7VNf54mkj+BmETGJxzk5Wkjt15LHSSAU
	 z+hxOh7v6KCcyEfZO96wnTP4pOeUtjC9scte7g7oWhnUBSDK8JSd4+jHJkUDWvfxnS
	 /tpmSMEFHsekr4QG/jU1XC6N1Kx5g3zQn0ykodmGo0CODCxzVB4e3Ihlq+lOFUoTvC
	 dLG09TmmRG0HNHOPROE+Ym48ekB3+RQkxxdRigdRosOfN96XUas/nSiJR60JjKlme5
	 3fVM6lb/bGy4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F40FC4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166625645331.10394.10269681352253771525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7271b8ed6a057fdd8fc8c29ea471d74f19422202d8f6a2e9d964b22720eba48f
Date: Thu, 20 Oct 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666256453
