Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105602C1AB
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p16IHlyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 786C2C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701719896;
	bh=jmzMhBJWsJOsqEknEdq9Ncl4qTX/y6z6bVFBfK8BbOg=;
	h=To:Subject:From:Date:From;
	b=p16IHlyTciKoS2WQ1G/psxVmI7IpvN0iFDaeZAdeVApkjd4ElsvAnm2+kv3Pz0LYh
	 TK995+R8g5QXFstCLryzBbTbQHAPIYVVBZHUQRfmhPCxR9o8CIWtfYQEVlpc8/lTN6
	 p2PqcQVwTVeo3nuPlw1zOV/GrBBpkRvcn50UGkGYmJvZPxKPb0K1TUNmmQXtg6a6Be
	 /gQd9lbasMUHo0V9Q3SSOJS8SEvz10zAooAYvCfFAI2iFB2q8pmLdsAOSerOBk0ai3
	 PDRZ472mWbS1YBYxwSMYGsPQBdgesGwJfzeb81x89klLORi8eGuV/4DugqBhFvnZaS
	 0gQEIVAo8Pacg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611E5C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170171989639.20003.11404999122904023198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1701bd6062ee6705c489f4a9aa647797e3106ba688ce1ca6953c9b275bd66a1c
Date: Mon, 04 Dec 2023 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701719896
