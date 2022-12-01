Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3707EC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CDFFC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669870854;
	bh=fHnokSr2v3YjcdbIEQU2PYhcy3JmFjvATO1AS8RyjN8=;
	h=To:Subject:From:Date:From;
	b=I2mFl16cfYnztjFEKGUBk262WYxETjPoYClBMDex6gYu5d/bE97n2b5xjVdOrmcnT
	 AhlCkt6g5yFGOD9b3ykexfZX/SODkI6UPn8HHz9Uj+ejVVn34OXRPWJNi3UY8Kl4ni
	 SgxJOJngz5Zi5aDeQ2cKEa0ZwZEbOJGT5bniLiHq8rMBGIifrBwIRWJeSyZ765vRA2
	 xtmJdO9MkSeYeUkTH8EiNaA1iqmAMpv4Mu9bBnt8pk+XpWELWgpX6fSYteeV4ozHsA
	 eByY7bG6EQ//6DjR+pScz3sa14p2soF5EKlU+JwHsiv+Mql8HZVsBOv7mwSV7f2fCI
	 H8eFbiQqOGNfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E41C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166987085439.20079.12836702897663225033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac72b168045dc532d16e1be9ff9382521c82fb93bad01acaa3e33ef9307d2ab2
Date: Thu, 01 Dec 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669870854
