Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4426DC2EB
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 18:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC80AC433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 18:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680979865;
	bh=G1MhKs/aYz5m0m2Yy++TPA6refUZhWVsPiieM+aFw/A=;
	h=To:Subject:From:Date:From;
	b=YDDjGbsthIyfIyeSxfFuK4sO6P3de2p72mGBdLwRT/BhJgcilbtnVBj0h4aDCIA8m
	 VJNBcpthcXjS8DOF8U/Otq6I6jeHQV2xNkxXHwPNFKPs+J77MUeSeAPk90+RIoogK6
	 1QbnzBoUz+ObpjqkZHwN8e6gW8N227HpRVD/vgOv0m0Ivqq7HqrbOhMQESkhGZ3N3L
	 sh/4+8PJ/LZIw5BmKElfuEIMGWdDcAggMtVKTbMhTqIl53jt+XoO0GDC0o4uAkgFpe
	 5nPCYT7S0tiEMqA0GYAGCf/So1lhBGbkdSzFSnAqgE5kk9etqGBUElqExQQuSq0SNC
	 zIYenj08QtxYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD762C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 18:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168097986576.945.16088958682767956774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e58d678754416efeeb8256e65d840ce3aa32fc35ae57cb03c2b9d4b814e648
Date: Sat, 08 Apr 2023 18:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680979865
