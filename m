Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D353D82
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 11:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9F9C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 11:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695123308;
	bh=EPuMzuy/UcB+EHmkTTsEp+FUkBg2eQmdHo19xz9rYMY=;
	h=To:Subject:From:Date:From;
	b=LkJWHxBNFtK42bkDUcvpzx2aW/+83WGUiKDmF5rbyPdK+Ba1BWBNrQtjSxxH+CCWC
	 DtCrPW7J1Mou0AI+lTikWVeLL4LVKE1n+7fksVNKGbLo2IlenWVL4hvOkOi8lWZiM+
	 M9B/u9f/kgcmoYdFWlcgVAB/ZXElpuafQmV/VwKof5nPZD1qn5zxmbTmXEiUaR9lfy
	 HaKd0KAlw6CczTX/ujy3f64H5Fh8ssV312V3XKWBHEo4UpKb0hZDc2oh7rD0dTSZoR
	 C1b0HI0mAU43qofNXfFWlLPnJRLpZ7V71Ecgbjt08SMNzRYtk63eNwtnsZlYYwCAkN
	 Tb/UFniib/I7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71AACD54B5
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 11:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169512330867.28119.10801749745185420368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 097d80154f902953cdf742ee46c2cbfdec49f5061c1a7e02a6a80a5a3d518eba
Date: Tue, 19 Sep 2023 11:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695123308
