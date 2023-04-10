Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382CB2598
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 09:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64F2C433EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 09:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681117925;
	bh=9SAQKruERnX5abqZ0lHkSYyYkz06na73zmuK9WxL4jU=;
	h=To:Subject:From:Date:From;
	b=K91/8vRfjglYftvBZ67qxNQ4g2F6bc5k8ZIEZ4tP+xrP/QjOoKR11jDDUvyxHOD3Q
	 oAUt4/c53FMg07uOzdIKLny+YXZchOnVHURdC3KULhchAaGM+vtejK0j3peTsOYhTh
	 NkHRhWTMeAckyOnVJvgxsKZMqEcI2cfbh8e2mNrB75M64IHZxUePELDAp1N9OKyCvx
	 0Bapb8gr/mdSSYCO+d8mu6Pp+k/omg8oXcrSSqny1R7YQyVAGmXzqrmZdPYe32qw7I
	 PbYHr30fDUi0t8PDVHJ7Gt32D2DiFlzy+Uh04NYnQcNbGssc+/VZCGV+9BRUQEew9s
	 yQOQ/0DOq+AbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD221C76196
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 09:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168111792576.31747.10488188359047384111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee86f5b09ac84ef072023c66f4d45a7c765fe9b69428b99f005e3db1dda74fad
Date: Mon, 10 Apr 2023 09:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681117925
