Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA4517D4
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 10:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C568CC433C9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 10:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688121188;
	bh=ib/kCt+zJU3Dq9IbtoFQjZNA3KlCheggBG36B69fwoY=;
	h=To:Subject:From:Date:From;
	b=D+CQriQU0Lmen2G9tjMyS4RMPjkZQ8IZdIfd5EwMIecKAP0wg/Lp/TgGnj7DOvGsH
	 XVNPRr4SF/8boF2EShcuz6Pyzr/PiB8K3dGTsnDOP+wIdhFRebVqqp7ZNcNQLead4w
	 jATiWjgVDl10+QPgkq8uOXtwLcIpR0ig1LI8ROCU8eG5HlrM0IMIsVhBxu0yzZLixw
	 hdWG0MWU9t87KPFtjfyVg9OXBhmXi1RbcKTGXQ2UAxnnDdiEsNIPP9y+PdesMszRNH
	 vr/6T5PpFMhkTuSe8w98V4O8I+PABg7WP//tdRVJC3Gp9/ll756cLAi4Jb1/ch8KC1
	 BHaKC575xY/GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FEBEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 10:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168812118868.23563.13096536229555659400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bb55f363c00470396ba751ff14f8f97d89603112e8a4aa11503efaedcf1dd4
Date: Fri, 30 Jun 2023 10:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688121188
