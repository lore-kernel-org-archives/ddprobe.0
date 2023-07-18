Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4143EDE
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 00:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35D2C433C8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 00:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689641468;
	bh=JMhQf+UDmVjzgTkms5R0zqVIxf2YSLfzDo3Lp5whIxY=;
	h=To:Subject:From:Date:From;
	b=YJESNuzl+SqTpuGRcUEZxkJd91j2XKASgrNVciARl0Ca/UOyaSsM/Sv4TSLQbU2F5
	 JIgh5Lq8hkCULp8jcTL1DDvcZN+JiaaKBk1W/vNkA6S9amXYv5Nf0ZOlTazT//myZL
	 mZlOtalgxCDhhCRstgUyRrMRYEYpezLcMDpm4uMDNw86EQFviEiXRGe+RIKAI4dN9A
	 HpOIUEmDHCmY/RZcQWvHiLcW64M04Yhgro39+nqsCqvbuXWzmz/1RJ5pN2uSE0pYXX
	 91DQrS7/goNn0W7LvQFjYKbUq4s1wnsD+fuvjOUeC5KnPNESqIW17DgCFadZCITqme
	 g8fSfu7t0gkKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9879EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 00:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168964146873.5296.5288589039940059135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c02a8b941a08f82cf094b2073d11d4df7c4f71ffc05f056ec07af2360aa94d
Date: Tue, 18 Jul 2023 00:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689641468
