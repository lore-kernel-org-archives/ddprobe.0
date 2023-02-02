Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E76063B7
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 13:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8694C433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 13:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675344965;
	bh=YiHIb0w0/O+Yl3QmGt4fgYlYWaIo7DgbPvDmpB1F290=;
	h=To:Subject:From:Date:From;
	b=JHGOuiuRiVlspz/gBRyRllcIoQbp55zQ+C90SdQUihkM360oyOvgX2WcK8veFKLpT
	 SK35q6XtfE5ouavuNgMpcYqcq0l9hIZHnYQV55j1k1yJj06Kwt3wDVq6bI7gcVqOKK
	 waoX0FFGed6VlLYkDEkvncWPP69dexU4ZV5jYlYjJ5/6NMbZ+ItXidPbd3Dzggtrxm
	 Var/P7zi4OcDWhz7jyv+YCf250CPNU8x1i7jjFirL7W3j4tl8rrf6fW5hNDP7KgIUR
	 LgZos1MHcj1EBNpTt5t2FltV3oVdTzNCCZ2Zs6OsKsq+vuefocjz1sIF2RATguoC1E
	 9TX6vqYp7FXaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE9EC05027
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 13:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167534496577.16925.17550095800638737974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a681545eea307ed15204def3fc8f5250be1155580cc0a8d35e9104bf464f54
Date: Thu, 02 Feb 2023 13:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675344965
