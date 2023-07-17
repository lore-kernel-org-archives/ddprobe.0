Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635A6BA27
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 15:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5D5C433C7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 15:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689606068;
	bh=40mvBPSG1IvATMHYuzLoKZckBjWGc7T9FbNpbrSToSY=;
	h=To:Subject:From:Date:From;
	b=ulnh9HM1BQ8RwKZ9Or4I3j+EaPkI2q712QpewX9X5VIov6VuCXh8vtmE6YzBfl/2H
	 wRfxJXSd/2UXXjF+5fYcL/tPl7RdooyMdXUhBz58KMRfSXH3Lj+eGQeaviAW0RaHPV
	 HYVXNqs/e9HfKk4nXZqKyH1WI0Whtfc54kmYLZ+MTSt2NON21Ub6M4r7yqj9PQtOtF
	 /rFbw00l0ORIAfyCxcwJnVxVTS8Uabg3UFA4RGMglVkCtWQ5PddJXyUJuSIWhse/Jn
	 n2Z38HCj3lhMoBst+ZSvA/9PDFBzIsnX3S+drMCY13REBOi48//+RsZA1W5yAP2jbG
	 X3URR5pQdRRLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C0AEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 15:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168960606874.7032.5926064711115748320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78393e3d3fe4388c94c8f7a5bb87f8d73df895c3d508befcb25da0fdc99601b9
Date: Mon, 17 Jul 2023 15:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689606068
