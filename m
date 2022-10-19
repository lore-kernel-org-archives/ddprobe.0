Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22271FA8
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 754EBC433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666146053;
	bh=EnddwvFG+pYbXyDLbORxjWyssucdlsE5IQg9dis2X+I=;
	h=To:Subject:From:Date:From;
	b=WqfNdqHWqElUTNXMu6/DDToucGDOP1Rd3xHpgJUfFzZtHgkpbJ2mtNzrCdQpSis2r
	 zQvR1oftpqr8aqeNPSqnOR730QzmvqbZ8pcSto3l59Qx7obVARx+847j3m16L1Mt7v
	 qZIFs40N6TbcYFLi715TN4bthIEi2yeONpHmXMYBI23zGN8VQSsjlJoHPDWigNDl8C
	 WWZqa4HTv9OgzxhBmpHMFU+dTjkp/AV2AbfKD3mYmyDL9k8YbQZ7tfXxPaJLXUc9Yw
	 LTa4jGVmMZ3nkHg+QkzglA88PURTkUvNsUwEwkve8oPPAy+q6lyUZo64gniBP7yUvj
	 vrTEnX5T3D7FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AEEC4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166614605333.32192.3159622549086641321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feccc54189538adac726e4c724834e7da71809a1c24149ac697a6a80f3e42af6
Date: Wed, 19 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666146053
