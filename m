Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481D2621
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 03:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCF8C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 03:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687491188;
	bh=qC0WY50b+/iy5/nVfJabt21rk1YM8EjnpAL8w7bCGIs=;
	h=To:Subject:From:Date:From;
	b=hy6HkbsKHE1UP5X9uZPFyzzQFfChyKrynUWG6OYjreQhO1jgCmIqdOeOJ78c8yz58
	 j6lcFmmAxa7LfM8/LXLs89g0jflWexpYxPfto2otg1IviWVOZdP628+MZiwYmPO2w7
	 3F1/rPLSLO/L1wqPAPc5to2P242MCW3Tj/nfYcx5Ekhym2IzAf6wxXDObTFiK+Trau
	 gnPcSskMJqIW4QnR6zophzZdKrAM74iKbKjTZJBHzqVeibroFtffq56sCMVEq5KdBf
	 qZ26RZgnZrkuiIoq+Tgj/saLQMUGLYhg+FIdaLxFNER8hWYGowd2G7EbVybpJkXZR0
	 iC0j+p3/p+voQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A726EEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 03:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168749118867.11756.15865457426294151610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c879eaadd24efdab4809762412041a9fdf565611b9abad649ebfa9876c178298
Date: Fri, 23 Jun 2023 03:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687491188
