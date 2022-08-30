Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96E3374
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C2B9C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661871053;
	bh=Pu6PPFsAuO2jjA+7RMKV36Zu7L0ctsUk78sceUKtsy0=;
	h=To:Subject:From:Date:From;
	b=rbKzBzSnPw+VDSlaUxiXDUpxVSKSU2H7vQhoeJPeJAfojD4329nBfx1pCX5Oy0SjS
	 8BhzqMAbGCN3hOHFjtaoWOOsEUxONRdQTgAWxdLtIVsq0VzIzX9vVI4qiffX68kM3U
	 vZ1t6KTOpd+IaGPR4F8hj/a+E3bHZs2Ryy/ClUfMzXjoi54d1EBU36I9WHLnuBcMGE
	 MT8IwabvZRZ1nqQLhIYD/NtzoeigM4QKH6wFWAzrSef8BiuyXUt9OmXs0WW4riLtBG
	 6oKfABww6dxQWFlJdlVkFgrFHpbizh8lYfNkytNoFwBI4sm5niQdl/8Ow7MQg1d0ga
	 qh9WiErs/2qrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539DCECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166187105333.16655.16578532329833548542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb6ed35d62ad29ae99d215e5d4dc4ef851ae0d2dd7d8e401f26f19fb8a52183
Date: Tue, 30 Aug 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661871053
