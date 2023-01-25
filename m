Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372EB33EC
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 22:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C75C4339B
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 22:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674686585;
	bh=OD91Bt5oroiO7n3gQ1w4TTb46mhqWIf1YVzCCoD6SCI=;
	h=To:Subject:From:Date:From;
	b=FBQ1ZeukC0B39x4APPQEo+kyRgUKcDY7x6ykCvkJDoEhfAEB53eWeMq30R42TG+/n
	 p0FB9LigzUCn3AAXY+vLqJAhKy0nmR5SH2n47ZDnLsvrXYSH4bxnuoM325MEMGT55t
	 cw2RD83gTF/g85AJwkbwv6qvMCZ6uAJm6GFVGI64YAU1sTw/YONnxKswXX7pKUaqu8
	 7ksvehCpgPJ7kpnpPgm6L7MgnKTDIzZLXBWxPpc7wP2LKhnvAslU86T71fcriXr5BI
	 igFE/f9QrKrIlTSi+zhzaIYM+dPzwb85Wh+G+AmYVScv2kzUugObhVUoFBsa8ZOMNw
	 o5IUgZFL89uJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58CBC27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 22:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167468658573.10476.3609798421754842559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f74dda9ea3cb8fe9d1fdebe0d6e4516317ab7d52c145246e944b1f9b4ec49c4
Date: Wed, 25 Jan 2023 22:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674686585
