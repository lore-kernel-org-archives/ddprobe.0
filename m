Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B3317CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C6EAC433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669447254;
	bh=W5xI3iJ/lsZXKrEBiVlQVrQjPTTO9KyXFfAt69K+6FI=;
	h=To:Subject:From:Date:From;
	b=tVHuuDT7I+2IBefsIxQYbR7ZsU0+eB8jvDpT/mIpWBOOx0s9ey4ewqhVTaSr3z4MD
	 JlbDbu+D2FFWL+iV6e+7wDIfKNTpD2U6rN8WjvwX58oDVvEKstjF5B1LrowscCr9Qn
	 qowqa+43L9N7Zr5YQBHzGJ1vmPc04tBL34vYyDarix11riIQhaRrXhbtgInPuMRVIK
	 nFqyG2lAdTCjU1GLCuZowUaTVTtbF4GoeVCrcbTKTxdLP9scJi0MC6fnb2dQvIk8Bt
	 xp9F3FiEHQyc+Fom4IFVBLaEFVSvc4d+3iDNpqHWSiVZ80W48qvbY0Ui3ZRTguJhCE
	 Z+eLI8iarACLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52920C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166944725433.22436.11452378673561591494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6072c366d3ce4d47bf19f25c229df2c1e6dd0ce7aea9b30628a731cbb3ab5fe
Date: Sat, 26 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669447254
