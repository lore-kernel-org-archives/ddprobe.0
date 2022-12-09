Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC807E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CAC6C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670550687;
	bh=GzWU/4qML2UzzhUEbfXh525kd5wUE9dCFuD8KIZ6dTA=;
	h=To:Subject:From:Date:From;
	b=HqLtlmyUYZOxrzX6XX3AkLqQybUJHLfJbCdZvw8sAHfR1Tb5vFG+PYLnL0gUVuauk
	 pQjrhNojHQhiLjGl00mPBPeOjCCyGsYYbNtqzkByedmVWCveaUhkr9j9S3Pgo5bLbD
	 O3ypIHn8mvVYOhUAYaY89eMwYVPiOUNMQwem/HD8G2okfgZV7lVU4y9KGjfSaJ2kn8
	 wr3H7T/K51IJOw2ZePRH+WAMTrCeN8P7b0XtDD7fcqj58SOWL/poMMKXz932jxFUCg
	 OCNiIozT1NFt8gqqzuSq7ioy/mAqwLrK2um14s0BGRY5IKcu+iBzGfw1Trv8UsHqG1
	 imPxgeblwZ72g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FB3C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055068739.6887.9350963886159168094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb49a6f97bc62cf3e5314ed04a906667c5d5982579a213c7dc02d9e7fd3ff4e
Date: Fri, 09 Dec 2022 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670550687
