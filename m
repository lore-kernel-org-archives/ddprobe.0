Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4083A5388
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 09:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14D1C433EF
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 09:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681204325;
	bh=EuKkDoV3ivas8Nr1dwrOZ77t1DxIDFHWAMwkMsxvJ0k=;
	h=To:Subject:From:Date:From;
	b=lc6d2M8+MhRSzA62mGyn30+fyV05ayYIxRsX5fhnZKXQqhbhHKrMoJ4AwGFBTV3ZG
	 5wsGfZXEiIW04xprDWpvxOUQsFiLrsuW6UjULEBizDOH8biW9dgUoc5nwBpXWQv2xp
	 aow4RnB3WcQf1xQKB9XiuH6ldTtyfDzOAyd1SkEVbjk7YR0TEaA0FMaOAfvUzjtQsw
	 6NMqk+yF1s6As9gDxRyZxR98fZiMsQCtYQAGqNdkBq+fjQTiQ1/RO88bxaJR1Kniqo
	 +YThRjSH3M/P5+VMu8EqMPkcQ83nuv+yQ4sQ7zVaDm4l2CEkeg1EnvSxSh75irf2PS
	 GouJAITlYaeMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C370CC76196
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 09:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168120432579.27484.13631179150983642511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afafc20f9146a6cea8b92623c224d01655de3fb5779da89d17bb5761d49b4588
Date: Tue, 11 Apr 2023 09:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681204325
