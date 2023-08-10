Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519AD3C3C
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 09:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C597CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 09:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691658788;
	bh=pGi/N0+kF25G75zuKbMq5dfj2TZN6hUy3d+GVAOI+RI=;
	h=To:Subject:From:Date:From;
	b=pyYEdZQNaP4AAjK4LHRO1pxxlbyYGPWnkt3Jp6qYR2KMCR3i+2wYpD2j6U5dfSFdI
	 TOtZ0MzMGErF4oXC7Jg7Q0ZBXEP0fDbT17odtBG6llZRx59xR8fNARCHi4mFxBwxtV
	 vxBxX8/nt1wd9s0tup8ijza2mw1IL0zr8uNaxc5GEpuGtFxApEvyM9vOPpCqc2whj2
	 0bNYbasB89BrmMuN8Uoh0kNHprovZLdVDJ/y4IDPF+sl5NKLRbUXsYSvF4AB0OCCbX
	 lkddSj40al6IpIXVmaw3+k3J7bJ9P474MSoik7Eu83jHeyEwJ4xH2vAd07qCyHhrY8
	 hCR+NnmyG0vPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9370C04A94
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 09:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169165878868.5325.16942853980747811119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9c70bf2f5b2fd4ad46c12da88f490b5c31070192ddc35add008050921d5fa8
Date: Thu, 10 Aug 2023 09:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691658788
