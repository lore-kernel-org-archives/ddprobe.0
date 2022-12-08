Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79047E3
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 792A7C433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670511054;
	bh=TP4JOOm+MSGiXgzHs2bMMXRmgqhMfFUYJgBAXqkYEVQ=;
	h=To:Subject:From:Date:From;
	b=nB5W8upUakX01YFEy6Gf181vmGs+xcX9xTqF4AVjfMK7IN5+AoIyHSBO4b4voAi+K
	 o+oxPnV91uuRxtqJm6o3lUpaAkxZhWlO3Oi8m4+FfshFq7E/kl5brGj20BWvMthwx0
	 jGHYCCp/Zi447z/fI522eTe4XsiVyoYW1yEgJjpH7tk7GlNMV2ezr5LYAMtYfIAbk/
	 7bspOK+peE7BQgtLUFQt48nh3Ri+36pbFxGMJqAdKjhtioDwJwYxF+vdTTIhhAPaSu
	 zR1pIwGH3II+3W5RMAA7qtbAffELaI2Bl9xPY7N+EqhX9zVsaQRpMeVlDubb28Owzj
	 bhnyWlWgkHYOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A79C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167051105435.19384.10673704455324114932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52599d171b1b55425e42828e386d4418a9d98178023dd60c89063890ebed2698
Date: Thu, 08 Dec 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670511054
