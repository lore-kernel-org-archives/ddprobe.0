Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E8B363
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 03:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75D5C433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 03:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686712028;
	bh=hbJQin7tOGPDwUHkyFGsRAV1rD9VVzsZnhNmg32lXTw=;
	h=To:Subject:From:Date:From;
	b=fmit0OFFaH6RK1eu2RrubCMVLDvmf7Cv1Yd+nd5OG6kGoIg3YVc4UQdqsUoiabNG7
	 rldNUPzYA3nXzIDkcZ1SlPm9T+dMSVpQxj8AJuPwAXwjos3iQ2eTpdS/t/ku7xcg11
	 i/jqJLLUfxE7DdMSHOwTtqaCC89hPJg+TpCegsVCGus97ON4aEvm8IfI1uwRabtiGq
	 Dut3m4TKLs72DZZk13z0+F/SVxrQe56EICUv9loE7xyJDTE1H4L4PxSFhfKK/YAlbC
	 QplBcg6uDMVcwJjdpE5PHaD7DxDhhh1C/jlSP+C7PVKRJGfhJEXmXzlqgUpt+mKwp1
	 J1t2N/CUaT+RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20A2EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 03:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168671202872.28281.9167378523408454772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 629a537f3e5eb0fd7e16ecdd4d7ed63a3b53fe1b48e5f6bcd98d02a89c6178a3
Date: Wed, 14 Jun 2023 03:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686712028
