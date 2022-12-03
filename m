Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34B479EB
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 877E7C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670097654;
	bh=o+q7MPRsEX3c/TqU4L9O+swK/YquTqw6ksp745wv6m8=;
	h=To:Subject:From:Date:From;
	b=fdOJYAsztLkdo+aH5LyLuCFvCfLgJCPpEyXXnRNFgL0RLzpTivJLUBarSJSqt+E4P
	 D5GW677gcNdqLJsfbyGRBW3Hfd7BB33QVCCTbCEGP6l8kzTdR7bkLBBq4Q1t8RwtA5
	 TU2GTUdQuAit5dnRP9O7CAFFk/OCrCIb71kmT+vKzMsIqORnoDZ9rnSvPShrzrM5zh
	 87AzmUj5wOUf/mja/udo/k1yigU4P4aqJ630740M2R/hki0Vby85g4ed7mLEHetz09
	 +NbWThWy4z9niDHPPX84s+2FHVhMRebU7fq6cDA7c5uwa6A9gcouidGkMe/xQ4uknF
	 JlpElmOl+9G9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B8BC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167009765440.14926.16350521753368364337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5fd1d9e656648bcfbd7992102d732f140c740932fed1cdd4bd174438bff64c
Date: Sat, 03 Dec 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670097654
