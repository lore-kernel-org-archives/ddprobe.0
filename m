Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D15163D3
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 18:00:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0A6C433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 18:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687111208;
	bh=nV37Kwc7zZ/jfk4oYJy0GET52YniSFi6JdxEc/mdqHY=;
	h=To:Subject:From:Date:From;
	b=moS5lEAy2HiFVqRTg8QLhE79jQCtOgBDcnwgfddrmttahAtnFMjQxf3bqPZnfIo7A
	 Jxonc/Lz7n7fKENY5/9hIq5p0KtcSLTwOJEwNvVIX8RN2Fsyzm49SY/ID0djOc6otv
	 KVNoq01spkSh393rh02ZBUGsXXetTEHCYbNrMV6eWKVdZmzQi34H71WO3VtpTcavPr
	 Jh5kOMLVB8LQuWMSj2FWmgFDTwwekl+RSlfA/vdATMRC52YeEslQIJrlHSC33hp13i
	 DJQH3ghYcLqHadR77NkvgN+5jM7gV9VNFQAnVWxu90zbOMGyZMdBDtka5f3vUvN8ld
	 XloeJODYQ8MoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC073EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 18:00:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168711120866.26186.11767255132991529126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f837db47565df6284e7ddb15d9b53bcf11608123ffcf8b255adb16cdde5e34b4
Date: Sun, 18 Jun 2023 18:00:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687111208
