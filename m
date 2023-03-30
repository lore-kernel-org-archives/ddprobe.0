Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4FE8480
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 15:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E497FC433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 15:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680191345;
	bh=+1Tiq1VXANBp2yCa7IHYwNv0CcBCABcJk0oWXVdgKKo=;
	h=To:Subject:From:Date:From;
	b=EZsyHV8cdD6uNcL6rr9QHFkCEcL7Urplxrusi5bE7fgq0yt3aYgtZ1Ln0ziHco6kO
	 RQc2e8nWviuRsMQJr6V8GMyfUCsZ8zNrB+3TiMlV1OocFC53Jau4bx6++UFQWIau8q
	 QUystocuwAW2AlYFkhXNArTwE4o3Pat9orWWGTomi/gMXEXQORcZk9Tech5wjjJbKu
	 P73Q8MMWBR9YoJcgGKM0gFzegqS7sUPcXUXRiVaT3rZ+ikEEA0RszsTALQAChx3pD3
	 NPrVRAsKdJlRlbtitC7ufzuo7EqgXTe3B4LkrNvBcEMeX4DzPFJvB+AwfPsqEC9G31
	 Cmq9HaV9lBubA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB09C6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 15:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168019134576.9735.17693161368116964097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13232ba35e48879d725eb592ed2182c5f459189b1ef2610eeb627d79d39729a
Date: Thu, 30 Mar 2023 15:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680191345
