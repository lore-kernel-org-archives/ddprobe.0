Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBC133F9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 09:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C6CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 09:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689152948;
	bh=BP6IG/hOsZL48HQz6CR2CqjH5PHeLE1wt/HkkZIAa9M=;
	h=To:Subject:From:Date:From;
	b=CPaFxjtKiCD71dUCo9aSyPs2H0ZJ0x2Ief8DW+JOW/VKry5Hk26ti8jgoBa9ajZfQ
	 0hC4IFOl2Vmyd65eolq1CZ5FYd6Pgy1MmS/LSyI58OGjsjotW09D5ayMTpmcFCLm8D
	 Btg9hUhL2dKYZ4kFdYSOCiJJzhONOKxx00mILES3YrPoxE0l11ZJJDZiZwx/lYzG9m
	 wOoOrkgCl5HtYZHbsD5oUQ59yDGwAvTf3wtOB0T39Rbmx33ABzMa5stNFMCYpH9xDx
	 LdeINexx4pcPp1Mjghd40YQ5xc0IHls4Ts581D4t6kGJkikjN2OAv1bgkGnFPGRDwa
	 G1CiIxIeAC3EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B426BEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 09:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168915294872.2813.6077420905158111456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405f9e345d6f54e97b914252a818df21d5d14838479a556f12a5fb6f64727f9a
Date: Wed, 12 Jul 2023 09:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689152948
