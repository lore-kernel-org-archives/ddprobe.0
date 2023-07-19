Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740CFC2EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 08:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04BB6C433C8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 08:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689753669;
	bh=3AyjE5sjz/wm6dnivEJVgEA19a9+Vqt9G4j3ItOEgjk=;
	h=To:Subject:From:Date:From;
	b=uhdyYzND/w1WEpmlB5Jeabs9edjADBEfKIsU6ElIp6jnceDPEqkgJ4bJP/2Tncs2K
	 +S9Jmbv4G3nkuYy8Bm3ag0sxLVBMxS/H40smwb3XJPDJ6OpF2mdKlHRfjVXIhJmmKZ
	 upqGOC4i22jYdyFuvVVABrbqB5iHqYzfn0LrVZ2ZgZ3TUiHMH/8UAEeCgnD6sjVzgy
	 Y7lJqDjr+2PM+tTgOxMYHue/+PCKr/AbelswrE32H+5Jg20rOdwqpAsKVT8xxtwAYg
	 tyrxYhdiUmBghiecyDRZ1lDF9AbgxDGIJVH/b6k67uXkoi9PrvBC/yQM37SC9ClMg+
	 xYWl5sCJ+sc4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D80A6C0015E
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 08:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168975366887.3720.7335500811734115075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f306f2e4767d555f452c517500614970f3d656e8e8ba10d4d229ccb4872322d
Date: Wed, 19 Jul 2023 08:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689753668
