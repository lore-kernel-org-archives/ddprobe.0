Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0585A3C
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91324C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673793087;
	bh=ZzCoMaRi+gqd8kyBnn3f/QoBMCFlKz2i18a821y4kSA=;
	h=To:Subject:From:Date:From;
	b=HfBhTJdaDhuqB4anMAgD10kM1+xszjJ6AfG1QNCF9yRSHj9mlw9dGWSUnQpyGxnI5
	 WxBVb1Qu7aDjVyO7xaPDCre8GCi2bPiWVTsUUkdFOyJoh4mDyLuj6FiM8Dw0w0sM4V
	 ZUaxPo5yn3NReqK86Ohb1e5IvhT2sTl3bdgUyphd889YiXDss+AhMK3pZH1OwOCL+m
	 1uVSB7gp9B8LWgb/0og21UNvcLAi2WrxM5cqHwjb9g8O7tjiEvHDccWjA4sSYilM2G
	 tHGiZbJDVK0UmOH0SeXOkZ1Fq5+UnKheeVL9oZ8fOUPkQRbrmTe2j7FQTfLXf+ZOmD
	 VGWpx2Tfb9u2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 684F5C46467
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167379308742.13656.6354145819058005037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8502ed9406bec1d10637b6feaa4217250b25ae9b2a927932cdae6ffc0bdff3c
Date: Sun, 15 Jan 2023 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673793087
