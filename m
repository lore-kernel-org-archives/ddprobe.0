Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DEE110E6
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 01:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7302C433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 01:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688952428;
	bh=zh56O95YFCt5dhQ0PDlnCfa+pahgxEUc1LktAkDrARQ=;
	h=To:Subject:From:Date:From;
	b=a0Y534F0SOu/ejTPdQ6PVyGU/XHhzddDLpw/J/JVuktrPq5SUdrmGs9INJpd99iPX
	 hjoHTfJbuUG0/D8UGiNvNy+C6KPeQ/v6JRklhVH8UIIb0rz9AhQQ5bFuTEQaebzwCg
	 hFujtlgSwUBvZH4z8t5FYqo5yC1/WRg+ReRR/z8zNlya3lXduqxqXh/b9cuxOlKLDi
	 dzU0UtjiUEfLyQxtj0GZecFrpxoYa/2/ePaxrDo3inSS3DCnnEM1WNxkIMByiEstNU
	 fG+87qNzElwSDUiyVdb0Bzn65kCNS0GYqqOHE7OUwODkUra8G8aNRhsbryqCt7bEle
	 79o0MdUdQiI+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE74EEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 01:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168895242877.11080.509162017489452991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf8b5a2ee22f0a826be6b6bbc889b902e2d8f35ee43b13b68b27ec795970cbf
Date: Mon, 10 Jul 2023 01:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688952428
