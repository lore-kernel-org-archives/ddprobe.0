Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D82138D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 16:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC36C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 16:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674405725;
	bh=/mH8N6+/NxOq+c6Bt11vfHb52UOXLp0LfAELFEm2qBc=;
	h=To:Subject:From:Date:From;
	b=FcNXtgfEh2iTwLhB7Vk2Dul1ToZ2fwcknYSnFfHAIhz89VoHZZO0s9se9xsV3s4IU
	 5PBd8RvjPTQT8j6h8mgxeLMF9dH4BHMInkjVmNHvRHsQTus5XrPPcLnPLYHZkkvJW1
	 KpOS1QFbDMWG5APIUoKhVsXAmGPGwjmFrbrixH+blv5G9118yLXzhdJYD3TBsoZ4pb
	 gp1291ZDIIMflsZt9fWDczlmu+dQvIPyhqqKxiyP983W122Buq9K+TLtYUro45zZPz
	 FGa4lbdD5fzoV7Z2JMwYAYLTN6b8OEepDIycK2WLS2x53nrn0wRbXZVmh6Bl4tYjwj
	 MZVLy9AZLitog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4334C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 16:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167440572573.17699.1030777047703525718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c27a6e4d1d8dface32471c2c80ee31a568f401aef64bd397b5dc0ae1e5640cfb
Date: Sun, 22 Jan 2023 16:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674405725
