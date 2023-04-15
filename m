Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439871868
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 18:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8D6C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 18:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681584245;
	bh=QBmIpzNVFgXFllPc2VpT4zt48e2Kh8dGFANOqLRMP8s=;
	h=To:Subject:From:Date:From;
	b=kcJncChNl+tdhcgBlJwjfnftLnw78gJqUvqY6Lw8LzGwwd+hoZrd0fW0Wbf8sUrOb
	 jd6GPea9S+WgX6H2DAyq9OHJ0d9Y0jw44/Xv4k7tIYY6NZQhfi22A+digugDVSUQYm
	 S1R563WRTbZMs1jVMolHDcAZX6j9o5++6I5u/28deBqvwN42GGlUJmVk2n2C5dT5to
	 F/niEiucvNZLA776VDMAJCtUnLtRyxUJHHv5+Sux1y4AgAZ5413t1gFv9y2RopJfQy
	 wObdARYcTdhF0jGoV/3iXdIbTqUAh077OjkWwOr2pbjk3yC228eR/kX3SGjcOw/u+H
	 Bot7Z1iBzJuSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2269C77B70
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 18:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168158424576.23293.10256796456152496005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac0d17205573198446457c475b548a851ff09e0a57ba746c799102a990f6a33
Date: Sat, 15 Apr 2023 18:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681584245
