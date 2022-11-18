Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A6CA492
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7602DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668807054;
	bh=alAQb5b3tFBlN0SzxFxIOmN2FrseOnoZuosD6ep/i8Y=;
	h=To:Subject:From:Date:From;
	b=Dxfw+CCF80cdg3TmBqxZ2Eu9ZebNnBYj/zOuhL+5kkJ/WCCIIjkNh8c17BXyy2R+K
	 t5a+O81ZqaBdCh/dc6Pm/8sIrUKeK9aBgAhCeTeHoNfiR8joaS3mhM9NmlTGDA2MUb
	 Rlhp4f6tMGk6fgVZFzLXlPHUuXAz0NwN9moGzIMeXtMitz4LhXHuNXJocrtfJ2JG52
	 8pw59Z6qaoYtUJq1MCTm46G3Fz6GB4f9wgRaNDqwItM+j4txjPyyUfhJ/WPZT+2mrL
	 0adKfzAZ6//EJSzd1IlDQN2x62l36xgHCHVnXzXbGqDRJAXPOP5O+/4Uvv9fsWBx+d
	 2luKXgT4p40uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B10C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880705434.17903.9727540037763943424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d824640cccb0ab815acc6f875a86c9d2d29454ca6c9b0a6f248728b6c9e56bdd
Date: Fri, 18 Nov 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668807054
