Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA82662E
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FCB6C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661847653;
	bh=xNlN2Ctkk0d9h24FxK7KG8sinsQi6LOXFCpzLrgOl58=;
	h=To:Subject:From:Date:From;
	b=APULX6L3buNRKlRsS3VCPvELj1qEqvJPcO/UDKy0FaKgYf39w9iGpiU1J1RhQRUnh
	 Tvz+0yvQ+Tm+6GyJuhorgZ+bGgmUTna4GARnuchXKRfuxNquLE9pxruFAkfX5ZSH5q
	 rssqFXU+utygSsB/88ORKGKxlBySDp+XYDe0rqzkzbO7cKrBrPzoAoTsQi42d5Q5HP
	 HU9PvZgt0nUjUuEY3s+o35Tt6I9cl4nmZcK7+jlZLXVhNPycFNmCblYLcxnSV2keke
	 zVpc0w6JkDe8lc6XTdLpDA+LI0X7M0joAAMlg7sZfs2FPZftOOF8HPBhwDbZ+Id1wf
	 5E/7zbwmITg7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540EFECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166184765333.5061.15343109914121968758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d63ca0f7d4df7fbbc4f713cb771d1fd869a8041366b44ff50ba4ac1154fde7
Date: Tue, 30 Aug 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661847653
