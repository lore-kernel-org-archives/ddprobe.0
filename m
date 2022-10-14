Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B8E36C
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C01C433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665736253;
	bh=HPCuI7MdkyGPqax9QwsiBKNe2HEUfCudI70CyAtbm40=;
	h=To:Subject:From:Date:From;
	b=WIK6ZzVQDj74ZVLdZhM4JUh2tIoKxsmd6IEmvLXj598R6eT5MKqA4KzQbCfkWVjsG
	 2zWUL5u+YUQNZ6H9o3Wp1xnS5OLJX8ebd+ul2uvuxpEyH2eq8PlnenFul8joB4s2ZS
	 rxehWhZ9h0VezqdXcb4VJpMAj73mSbXt6Q+A16gEn1oQlyc7fPRifU9PTe1m30sI/C
	 U+TcJOZBIlNacpQQjNtXse07GqPnVMdX8UGb8gaoBVRghfVeJcd0JDrznOIOEqkIUP
	 zaJiJ+NJlIKPiT1Y1I8bO/hkOEWjAiM3CbIXaoTn+1Vdkpa3yVk2QeZc5LvgkaMR2u
	 1rpItE4b9agAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545E5C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166573625333.20609.7230414627794184169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff44b894bb10bea78ee56b804917a134b82c76ef392a488f3b6d856ea0aac54
Date: Fri, 14 Oct 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665736253
