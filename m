Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C578D7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 03:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FEF4C4339B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 03:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682394846;
	bh=8DTr52xHqHHJv2Fs88oeZkS0KYSWr+byWFmcXJkSNnY=;
	h=To:Subject:From:Date:From;
	b=gBZkuSZpmnWNv0bamfDg8yvdN0828XdmgzjJonsg54ZRyPCnKeAwo9DqRX/iepphW
	 gpvbu2iIdV15yMaERYIlr1KmFArJ3FBbupVmYvvbeqPjx5fuoV72sAyrro9jleZmJl
	 /jaSUnJdXbZw6eDfgQgLAfjQzRJg9vFufcHbCcaYuJml1XYRyBvHGjumEekVwdfHmD
	 r1sr0Y2/ZzdQ9qqwZizhUcQ5h06zulaBzgi1ps/tLxK5aASniKaD61Z9FeWvJ1g9nQ
	 w7MuBYdg5+gvaGwcwZQZCSLd7uS97xIa1PjceelmpWMaQW7rcBWgu2UAyqTXTfsLAi
	 Lt2beqhFvOh7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C629C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 03:54:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168239484617.6696.16283661367172594610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a977346f904f78cc463c41a27279c31271049f52bace3d03f0a9ac7783fb50fd
Date: Tue, 25 Apr 2023 03:54:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682394846
