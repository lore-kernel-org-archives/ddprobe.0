Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4675D7E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 01:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2103C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 01:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674351725;
	bh=Gk/SYuOFTbQXn/U9d+k+P2uYeDcgp8mlKwb0brmxCXo=;
	h=To:Subject:From:Date:From;
	b=gdxqeqrRLrZfeqzpltIHx2G2FRLzH/n4K2UwEGg6J0WgZK70P6myeC0PKqYhZB555
	 mNZSWGBm5vO39GlmNeYBQoGOd4b2q613yS0Cykaf9DqhA8SzP4UOHowx2T9R3t5t86
	 8h8WDcQQhdUPFday2DANX70ND4UoXFYTMG0TjfK4oXIKL5AGgrfw6rXeYs72zLCPPu
	 E8XepzT9c37M0yiJ5/bLhFN6yp5t5DZ84I4kNKfCmwQmk2j64q9p+X7rkrdQaicF2+
	 mjsF9IiEUcx6JqVtB210kMaRG8hW5Ks/HkSYVAxDN7r3wnbXyjjNJ6+BvuaHFMqHjj
	 eQeQhKWDWZwWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBDCC27C76
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 01:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167435172574.8683.8346437135409935482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e089a325b1e32ef4163096451670a103b94b54ee6ab7cb3d8e1bd0891ec3b481
Date: Sun, 22 Jan 2023 01:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674351725
