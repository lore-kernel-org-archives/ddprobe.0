Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6761FA6
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 10:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45B8C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 10:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686826748;
	bh=QjzK+0+DwYlLHC46jR6OD2br5+L0dcKIZcVAu+eWZKo=;
	h=To:Subject:From:Date:From;
	b=GqOaaptKX35ad68wFmY1tUpVurWN9g/I6Trrv8j8oxoA5sfctRmS+Bpnn+1TLDPIn
	 pf9iis2jk8Uh+dviYjUlAK4wh91TDDZL6UCKorBwaqhJ/F3Je7f+DnYr8Obssc4AnT
	 Kuxlu2A1dQEhr1zR9ii7Mj3MaL6aI93weu8/T/3s2DoaMUH+ZLfG4Qd0ZsZwoC8+/N
	 5RT/6NDp7up1n4sm8igvuwmUPooQRAVSG/IsysPfup+Zkq2ZwqX+wQB8EDkSqh/POF
	 /La1arrs9vM980iPJbEZNxvW9f9/R6W03sVbyzGcxL0DqhPdbPeWfXLRWLB3YMI1eA
	 su2ZSDUv4Tatw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B955DEB64DB
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 10:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168682674874.13749.11752054420917302934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80864bc77c1b78aa54dbf032933b40fb67d29384937ce341ea9a8579616e5cb9
Date: Thu, 15 Jun 2023 10:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686826748
