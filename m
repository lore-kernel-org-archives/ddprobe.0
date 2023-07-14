Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4478517C0
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 00:00:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB152C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 00:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689292808;
	bh=I945x2A0+tdC9kmCEBSW54lKdxx7/fE42B5yR+8sWzQ=;
	h=To:Subject:From:Date:From;
	b=sO/A02Bp32jyuDKIekW1ba36/QIwukvQ4kILb5M6mHUnL4CRk9wgJm6roe6oChUIp
	 omKbCJf7TyKksbdxJQqM3uyuvfofLVWmxBgm5/FJCBQSyILBL5sFxN85C1nCpXylv/
	 toyTH6ADpuYWmjxOxP8uIDwj8IyDeRCLsEadkzrAz23vqd+Te+VXYO7bpcZDh0u3YA
	 s84edm/q42Js0G8Ic0oa6nLJpSxMtYX2n0dLI6Z91bnVXX6qi0weaO9Vu7A2oDnpsT
	 D8fvw6uHTAsSaHT1g81+gYQ9efwd6aA5g3oFN9QYdc4myGT1xGyprV4AZfyy2aWsoN
	 g3Z9BGBYHL6Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC244C001B0
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 00:00:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168929280876.15109.14930903554737792141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde05069564e0404677d528d8bb995635237ef6d7e66460ce64d56ad83ffa9f6
Date: Fri, 14 Jul 2023 00:00:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689292808
