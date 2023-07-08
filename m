Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A2415A4
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 06:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4829C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 06:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688798828;
	bh=ntgFaOj7Y+BqU841KMeLTEXx+illEjLOLJNmEauNXUY=;
	h=To:Subject:From:Date:From;
	b=a2zlpXpD/KJQc2iPMipKjYDPej4dlOOmJET/Tteq5DBxxhf7F6FtJl3144GNU7eHs
	 rulSupfbGJhKJqMEj6jzw+jqPxL43D7utPs3GpLj7BCIwPKQpz0kFgdlRdU4ZVqp/a
	 T0RXWOJ+8LczG8KS1NrdyvS8Alpo30XIvxUHHEBQgX6md2/jv99prDMmk9GxeS3053
	 UDA+iXN7MjHuRs8Ru/q7B3dHB5nsNsV9XJc/DibeiENrPV+EAIbLNu9oPj4//RN1m3
	 2ANez3lKMvu0opsv+cdG99OTZd5xpKqoR8JhAB4IJMVEflgIncoZl7CtTJAtO5PRS6
	 P7VPG2iqhg+xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE894EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 06:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168879882869.20675.5163199038927672187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb42c5dc81cb56d0479c6f125c37409adfcf23d2bd2b16440b715a3343f81a71
Date: Sat, 08 Jul 2023 06:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688798828
