Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5E123AA
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771F2C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664697653;
	bh=ZCOH8FVMQA0Pl9EBu/T+abkgACWCpnssjI3HMzFiYOM=;
	h=To:Subject:From:Date:From;
	b=ABPztdGG6X+Q4u85YyDOGUyJVz22jJzzpcVxRcgIJ018TR8JvdZpRyPWtNWkcAekL
	 +7ywy/LppxH+exylNEybzod4fiGxz6giWpj0XmlO2aJ1NyUPyUB+xft3jQEAZyrh4v
	 q4z1bvWeA6CKtDBB9X/hsttHoklha5grfdRRad+m7xuxlxYYNP9JU38Bb+KhqLtV7o
	 jFpamkj+9d8PIfurxRtCv7HHiJ318qYspNxZLQAZ6G/ZwL027F40+J0HVQFC4ipkhg
	 ONnHoJsd1TjD+dwejzezaGxbSxOviHmWh3wvo1fz+GhjoW13ovS80rbyKHNe6DxAd+
	 0Qs5NWSbTdz7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B80FC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166469765333.21493.17916882024153179510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e49304096954a96b95faaa5153f092565b965ac886e7d269a1622c6db94330
Date: Sun, 02 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664697653
