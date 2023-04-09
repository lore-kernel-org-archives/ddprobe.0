Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B9F15BA
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 12:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E3FC433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 12:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681043465;
	bh=H+g1QNLTExg9p7+3syyz+lhJfbBPJvU01vDMn2IiCZk=;
	h=To:Subject:From:Date:From;
	b=DmJbCskp1AtEBIp77wg8U3NQWyoQZ1T45woVQ1UAHaEMYHwLZK2f670JB4aO6Feqi
	 8HemsyQxsl8lYWYZPhpNkYAN+6YvjjXtNBr98AoVy19dhLofzCPYBU6EiPFHdwAod9
	 8wDCIWE/ci/RSbMd/o0Ai0HtJNpWwjqJTjh1pwpHe1Pkoek99J7+nZYi/fytOQGVBa
	 NDBi37F11xqlCQ8q9gwkdggsUELTW6+KMBx1Kd1p2JU+NpSM5DiKMcEoGH9XgpzOmR
	 xY/Zvb3cBjtfyvgx9Mk4dMUilJhsDrcjSZZEwSDGl2JOGM92JbdBet/hpJ+VhZhrZo
	 Bc4df9Ju6NsMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B61BAC77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 12:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168104346573.9329.12213194135974708924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef0bcf6b10a31fc5a959e522c2d5da30df19d1807014bd54d6b5781a26bc0e1
Date: Sun, 09 Apr 2023 12:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681043465
