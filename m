Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352CB79D4
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 15:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1CBC433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 15:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683386885;
	bh=HTJkU3jwT/+CM1rSpYBPMBIST+Tka7gI3SWBKg5A6G8=;
	h=To:Subject:From:Date:From;
	b=kZYudUZ2Aoa5QgC4S3IWSEQChjgP1zdsOolvWSehpTC7xuyyVmV20YoAEpNstyCo3
	 zXuhNCqM+GjqpgZoFoGcvRBgcn4NPP2U7qiT7uSSN0962vk3kC9byAmDibUM+ZrA9B
	 scFOoM2VSnwE00HKO3hLjIhiwgWvoxYFfOb7hpF4a8PJ66/QPqyMXepdjpVdQiWz1k
	 C3CnOBB6xDiUxslA6GI4Cb/14Bltu8XXos1Ez2gQWbvSPKhZLaIl8DUGpmXTDx7e0s
	 ZsDRGmW5CxorFHanG+Pt7SQcOIXEpJJ4uLy0WvLSgcMdLpL+93N1h4HVhBb/2MdxTP
	 UMOlRi1qpzRmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2ECC77B7F
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 15:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168338688576.27181.7673761593689962568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27eefdf7ca2eed862307d31926637cab99e4cc7e91288f1373c2f47531b2b83
Date: Sat, 06 May 2023 15:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683386885
