Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC5C125AD
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+ov0W6r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 833CEC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703864896;
	bh=g/qMAdeAxjBVT6WrW5HE1KfA05eHpgXem7CA389eujU=;
	h=To:Subject:From:Date:From;
	b=k+ov0W6rhfpX/bJyinMzXiPWUJOrxU1E4Y4x69tIycodS8pjRd6LBP3EdbirJQ7T2
	 PICh81YwBaAuBxpo1sUamiLqSoVKJgdGHtSzUoiA71B0kHJybgC8x7wvWVPGSj/CmR
	 2I5yUg0BUPY0YHkVXiWB7Pn6py0fzwbBg985mMGEQIwdwOeAEipIDYNUdaLzt6SyBW
	 5E/UTrnWtrKzUNr/M/YL28rTFDeT8QyjreiuJLfz+Lskaxggsj09ulEOObio8CMIMz
	 NuwQ62n4fQWTLrPtJkvDFVwcqeRdAxMnSHk2dkqZS+645bHW5q621i4DXPUgV1uYxl
	 oJpX66XiOc/BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F1EC47072
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170386489641.31363.13420117245383584125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d752e442de9c06ae0db46cec46eca44fb3f74876ec2ace7c4fc23372692d8eb
Date: Fri, 29 Dec 2023 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703864896
