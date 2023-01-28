Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2F817E
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB521C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674865385;
	bh=TGwm9BYjs4DPDMfgUP1qSt/FLjqvTLi3IiIK7v8wNfI=;
	h=To:Subject:From:Date:From;
	b=U+bw3PIEiYLF8HeEtkVbe1Pg1tk5jwRFOSEsAWXV0QX5vNYVKSz87dt49X1shEQRY
	 5DcjvvkarCvHfQUlemXp4Hh6DXEfaDNRuCqf1MuNB5eGk/ucFw63An52hauxthuJVK
	 QdWyh8Kd0KoSPj4u0tGw/o7iVQWd0cQNSvQDVCB67ORQHOHDZEEZkSo+hX2LCJtTPo
	 LhEZv3WuBhx4xpB2GQNwvKLaPLHLgXIffX6ecdiwePp3+W2dkXTGJBCdlH7WR+uvKN
	 j2vWSV1aqSmvb7wdhFjO2brt/J96WrxVhVTLuK/VL+zyFUxVtBqQjzLAe4w0PN3eQO
	 92XhfZfqq/dFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAB9C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167486538576.23663.13387599924144907203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2347175c25b23c4353a231df7bd703aaf9aa13ffff2f89e79a5b6b1bc990e85b
Date: Sat, 28 Jan 2023 00:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674865385
