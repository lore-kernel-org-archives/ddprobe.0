Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7999014ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 19:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA348C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 19:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688584628;
	bh=lc6i3SK7tvvDoy+33OtR38JuBVtCmkmExGo0XhzLG3k=;
	h=To:Subject:From:Date:From;
	b=beoLuAGtlM6G8z/c6s2d14hK/Qtprc0gx4zAsiB6rOzr4QlH00t4Si5Odr76hxcuZ
	 v6oMuqyNOz+hkL8k3J4gDF1O/rb3AYHXIvjem7oYk+hcGiyBJJdbmJuesUFEW2ZY/I
	 ybqrGbgYn4M1BH4Sey1mnXfhq+zuny0zH5BUIWONA8FnCbOrUFSZj3vvvtjwYTY/6A
	 jBaI4OW78mpRe4Mp7Wp0mpXAR7wW5yBFezOD1/BRFgwj4VqGy3VDxPaOdbCvg4kgMN
	 WlHiQMJFzpA1QXPMuXbSs4XYokrznjUcMb3W+aXBFwz4V66ZBZKICqmXoz8FJwGr6z
	 6+xMamzD26lWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDE7EB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 19:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168858462869.6388.11883802471794737920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac50f9f1382ff69ff3f4472fda0ca7c933bdd0b20b6739eb2c2853892acc3d5
Date: Wed, 05 Jul 2023 19:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688584628
