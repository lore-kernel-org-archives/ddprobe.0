Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B241EEB35
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64E5EC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670239254;
	bh=J0gfBqlYrRs1k3ny0pJ22cPA1508havefrbrsYb0j7E=;
	h=To:Subject:From:Date:From;
	b=M6rW/jMgB7k3iW5q2cFvsKQUbHWuDMyT5OLTzig2bpGROZECdOirLsodCEC5WOPyG
	 5VHmmZVbSpIu4ZKxR+C2sOkWg6tlkMWOZK8GgTRZG7l3G4ITOSygotbhAcxycDZyk/
	 8YIjFybzCPmhsFat1v59VWiL6YDvSbPsNJm2EUh9jS2v21YMbOX2ktfoKKJvh2aYqK
	 pMVoexM+zruP3kNHL9LFuIvdnn5uUb1WI1AyE2w7zr8wTKYQ8p3gt9WoVyMe9/82FC
	 B0cwjemqf2UdpxJ1nuZ4DplH5qLp/UoPR1Y+1uKTckMgo9LDlO1ztlhj0cnPB7od+3
	 dhMowQqPHySdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558F1C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167023925434.17343.17567463876423217870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7904785a9aba55609e876b5f028d6793f7a09fb28dc69508ae2353ad17a43035
Date: Mon, 05 Dec 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670239254
