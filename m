Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE862191
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78535C433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667113854;
	bh=RVe68CVTGybRXK3yk9yd/A/9NC8rKEUzIB8m66Q2lLE=;
	h=To:Subject:From:Date:From;
	b=g/ZJ2N7pmQSR6+FZbR5Yc6YKv8//pO5vGgkrTTRkG4z4N23D7xV6ScDh468qgcp8y
	 snN7v2ltfhRH941QmqD1NDcgcqieWgyfedVPYvYpybcNfraXwg0DiIJT/Qep3tnwDs
	 OdrLcOYb96QbwlBE6iHbEr7S+gZDJ2C0IhbtFxFgD3o3WHzkoJ1DMoUc7Je4uwcofw
	 pmU176SRvT7MRGqKWDX+WXqnRTvfM62juZF06syWsiwRtgb8OLH3zRlKe+bLn+Y2d1
	 1nOmqS190J2hcx9Z68CA6FgPFskCYubb+ppI3jUGDq8W3AMVYdWACNNiz9VO+uUQOL
	 qWOLuXKdIx3iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58DFDC38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166711385434.16155.7516326759777819862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49bb5a8a0ffe1b387332313a3f3569531076cec556cbfce7fb7a6b94486af45d
Date: Sun, 30 Oct 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667113854
