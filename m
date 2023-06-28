Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688D815A0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 02:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7F6C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 02:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687918388;
	bh=OrtpoiCDsB32i/7caIUgAOAE4cYHThdakLCYGVV3B68=;
	h=To:Subject:From:Date:From;
	b=Q+bNmGnMuXX/VmmspLeokjD3ebE/R0krLZfWukYM5vFJbuBLFeeBOhJLDiDTK/7bJ
	 3R5IYfvm2BjhRAs1hbkMHBc5W4F9xCsZEKwNRHAIKvyi7/VGjZmoCQTCW/Ju/Yq7k7
	 LlD80KzUpg8dac/NLK2z94DrBN8EnzLf6jJ/fEXGP3aaNdZy3zSFtcnOYDEkxwRz+1
	 oYRWUA8mcDY6k9LXCVmXYZhgDW5ap8iKIU2q7BQ3/oTAeaex+7tlkPh6rVw2axbLIk
	 04kpyXc2Yt7/CVlgOP504QVlo0HxoDR3H7RXMFYWRxvS6xLnxaN4XzKGTXSLn7EtJL
	 SvXzWvrIMlyAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C086CEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 02:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168791838878.23477.4734915017744546776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5f5847b62a6868eda334b547edb7374d79097103d72f5762c3b3e77f7dd7bd
Date: Wed, 28 Jun 2023 02:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687918388
