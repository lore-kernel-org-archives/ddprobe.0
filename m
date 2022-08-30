Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEEB8468F
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F6DC433D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661882453;
	bh=jBTh4PMHRFtQAvTxd/qqlLQJdqasfWe+uV5wsWt+SVY=;
	h=To:Subject:From:Date:From;
	b=sUnjfeYohI8e5jkFjx1XyzWR+ODDtLeIoV06lZTrp5+gPK6Xkpq0m8yQ8eWto+Rh6
	 bLANFBvox9uGBrLmuEz/C51+rPVRhHz9rUwqaAR4p5Z4PP4bvuiuHZVRg7H6HxHuq9
	 biYkb8amPJWX3gxs7PhglK2vXdkr/lvSK/KHvPWNswh64VTEWFQTAJ/kS/sf2fduSm
	 2E9+aoUxHbg4DyPTu7rIy1DHHQ6k3DXsro5JSocPGNkaJ7JMWhrOrR10ddHqhbgzJZ
	 gwku3gFYsDavJC153nP+UeLvIBysllcSVZupdM5kSX9iKSfJ7MSRIAphk+RGZwwvrj
	 WrIAy9UsPc3kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 680D6ECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166188245341.3655.1252942305236076385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656402ace6f0e7b22da282f497b6685b99094d3ef0f7c05784c55780783d643b
Date: Tue, 30 Aug 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661882453
