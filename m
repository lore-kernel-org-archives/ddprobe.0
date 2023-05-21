Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4869466
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 23:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E45C0C433D2
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 23:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684713185;
	bh=8QjO9O468iter2/T84AMTmgQos6QgBFVKokOUIeAJJ8=;
	h=To:Subject:From:Date:From;
	b=o4Q3SQh5RdLQ0Sw+xl1TYwlGXJGBJuZJZpqjM1wemfWhsl3zc6K83Ejto6LpkCb0G
	 HSG+HCaGl0StuOTV5Dxx6kICW3EgUh5sHVbwtNHbk0Br1GG8Qi2xKLNn1UVuZpnMxY
	 0WvceLTrx2wFQWAW6c6VF8lKBlNGIrGGWKM6huFgaDuSzASt+5q4Sm+buwKVWTZi8I
	 n1X++k8Ex/rWst2xuQQpKVj6EpKfQ1VWy8jyXXDMr/TlvJwO3Fehzz+J88PbcpnTmi
	 TJoZPw0STOH/hJp/C5M7+X0RCDl9wLNuHRXxp9CkN+eaVPj92Soo0xAinCLH1FVW18
	 CKdeYk0ZFtagQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C01E6C77B7C
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 23:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168471318577.3141.15084716366995765110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99cce061bf25269fb41b5df3c6ff72052fc51d29d731f11005dd80547a4dfc5c
Date: Sun, 21 May 2023 23:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684713185
