Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8955625
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73AB7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661886653;
	bh=zcqEGKrLAowu9E6kCb7tvylphh3TvPEN0/o5hSgQ75E=;
	h=To:Subject:From:Date:From;
	b=tAVpkXW6abQNMiOZFvirdloHSb0v14raeRETD+ZU1iLv0rBzO9ZB1YjXB3PfpeNVR
	 PUdYIeZNXOcReetRH5i76h3ZKYHY+QEUxRuN12WhW5U4DgospOGp+0V4alnry2Wk3M
	 VGkJCbwTrl2fKTBu4ZN2AkLqn83J4fqikJGvpshIClLdKddpmXFOJCj/+7eMzI4uA4
	 IAXJa18pnrIiofydfdSMeUHJaxPDvRkWo5YXnNAf9yeStf3ASD/YVR6i5abNrdx6cv
	 keHWXsMBbDew/24Jws+qnWsJ3ZbXfXTSkO28TWaOFPU4OoVRP2u0oK977SNv2WI92H
	 u9osbKDLNI5Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B29DECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166188665336.25183.13194215255353347398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad2b39bd7e95f46cbd1a5e1eaed919d7d5ff3f38418785fac7fed7951c4b7bb1
Date: Tue, 30 Aug 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661886653
