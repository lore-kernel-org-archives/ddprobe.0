Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8D92CAB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC3BC433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673115687;
	bh=hBfm+Rv/yTdnohkO56F22DyzCN4cdkbiF/OwbwIDRog=;
	h=To:Subject:From:Date:From;
	b=hes9619A/4JC8hiGuOYFyBgZvG0F7Qh4enK04DkCfHEyR00MG8ouZcA765yqHxeFs
	 cTkWUbivib38Ql329i/3LuFsdfVgukN3XDtX7T/JdXYVf2ZKc+5TyWRHzjU6YWi8Kg
	 J4ddl6XmsiV3QJATvSt0ZiKD/iq6xb+t8IPsm5jsHRLxzqAxWsPopAamunkBgG8E2K
	 wnArayfXbS3A19wc3vrZPMVkPrUj6kvoYcKhfIRN838eyMp/AmsYC3IRvwS+CUnt/k
	 wBIcYG7juI3Q13J7dOZRFAkuVWVW4fbmh8LGi6+epRc3YJD+YwZlXwSeSax7LTo3+N
	 gfYshBaV/4x/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BD74C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167311568749.28937.10761295286976041968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f18546aa9ebd740179285c598c258425161d88697e75f0c3ce943b36ff14640
Date: Sat, 07 Jan 2023 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673115687
