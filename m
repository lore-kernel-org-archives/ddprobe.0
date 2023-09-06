Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605826AD8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 20:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD12FC433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 20:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694032448;
	bh=Pt0/yeKjdHEvYgMOTswHx1On19Gg1IzwcvAWnDyIuec=;
	h=To:Subject:From:Date:From;
	b=taOeflmKttkC4uEPdU1n+YVdq8FU8exduuR0tETst18xWtDCdY8XpIaUU7ozr719M
	 8yhfrOPHttkHOSnxyFKzYDrmm6omFgwnEu2IReC8LcgkxajxxfuYxIVBU/GoumCcBX
	 /oean+uOBLFsviWOlnzNYZ+s360OKWrYNXL1c+RSp+Y6Squ1+oiGj6KZhDY3ocTT0G
	 rBT6e0pkC08vf14GKNQ9L/LrUX9OTBMP60kTUvSHwoXYhRQjqxzz498WiY24yCiH9w
	 6VZz0BOlQShEA0HaQbrqEabt3yyBthjptxO8W2vLh1XrangcH6MVXqQPFB/Cm9jXln
	 9UTn1QidoytCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF64EE14D0
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 20:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169403244868.27408.12987068452892093007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3638883fbae968f764bf7337c495097d8ba0b20c3c489c751e69820c4ae601fd
Date: Wed, 06 Sep 2023 20:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694032448
