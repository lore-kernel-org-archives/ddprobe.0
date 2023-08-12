Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD3F1CCBE
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 08:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF307C433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 08:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691827988;
	bh=C0/+WtYrCf4xLvIRSBMy3fRozN3yIxwZnLKlhwwkpNY=;
	h=To:Subject:From:Date:From;
	b=RMskPEzRoL9VFgryyNi8isYaH0BQzgyB0Ln1E1dpcI8jaK73nSOUWcoDX73uaOblW
	 ac2G0iGW8s4w+WH/u6Ryf04uj9XmTGK6XIS6HpV+9sJ/uvF3Ii8cg3F0uK1SKJ5heP
	 e7U13IHnejhp6/9tuoQ1MouVY0hbCQpvVqt8gNgIQj3oxRaDbAZ35ZBuVaxnwHEksz
	 nJKrttAV6+WWVheItYPuuzIGBrKDzipXNcBCloKYoCnnd84YGPTkVHLTfRSPPKzvx8
	 8jVD0XB5/AJIZezeCq3MpcYG+pp1e+pQObLgmlroxN5nWhvJVIV8zVdBv19c/G7buG
	 cOKGseGhg5CJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA0AC0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 08:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169182798869.17834.17859926497890820565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80fa1d1a662d7ef4db1d2edd2d9f3144fcdaf50752a8c4c92a61087405938b14
Date: Sat, 12 Aug 2023 08:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691827988
