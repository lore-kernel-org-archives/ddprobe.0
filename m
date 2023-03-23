Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF371C04
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 05:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E99B2C433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 05:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679550545;
	bh=ZV66meERlVmXDBsb436mehDaaJbWSaZcY3CMJkfFm20=;
	h=To:Subject:From:Date:From;
	b=sb+0Rw3zWU0n4+p3+woRJyRtOx+CLVSaNN3OYlOr5LH+xpzB1eW2DdDPHPWOrbu+u
	 ixOgg8SrvBP7Ibhj10Gi/b06LKlVp7zTzZRSgAHwZwLsxw6RboRJKD52CuiHgENgrb
	 gybzr8rcAX3XcUStEBRwPaG2uoaP6a2x392VAJUq34JMP051d7heXgMHw522BxBrkn
	 /7E8GIE720CqpwzJ8ctgEVca4jGJMypjp3/dW8l6RqHQXNLz+oNtemImTJtv444rNm
	 eyC8Ce3N8OZ/IDKq9SGuny2U9MZ1WX7Xu6foA0dtGh5QEIDj48IHbBrr4J68HTF6Gh
	 xZjZJ6SW1YuDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2284C6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 05:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167955054576.8087.5360747619098524244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ffe65c6f0dbad2dbeabf94465aaccf8f1bb708d5924ad342eabf11bed4ff79
Date: Thu, 23 Mar 2023 05:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679550545
