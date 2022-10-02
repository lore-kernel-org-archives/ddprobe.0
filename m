Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8C6161
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E70BC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664687453;
	bh=UjNDeXTI0+WoF2CoCoPY5us5/qk20IU8SmzTX6Aanag=;
	h=To:Subject:From:Date:From;
	b=rMfQLps45PYMgF+eO4ZLSF6eRHr6GpNKCbLvYTNH6m523fuTP6kauxzuW4wMvZtsj
	 rfy3ERRM1yfbnyBNzTblHJalaHXeyjgsQ91t6l6v9b7rJQ7z4CTRQLPI4OeqipZKW0
	 J8IYT8l9t/MUQn/Zynl2Sn33Ekbhzm+0ggl69sNg4aGVZW2WembQ47LUM9n82eFbKk
	 pdgZwPdAhQhZv0/DBQBxKwzDlCs7f/6cLF6lJhEM/n73Cvy3SIuV7kNuLL/MGDfmKZ
	 8Cn/4kLc1q6R5Y7wQQi67efc1inop+dOIGYVxhY4s3V4cYx4akArvU3+KNKErTV7aB
	 RfzMyGIH5JJsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536BBC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166468745331.10128.5849342933585409975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecec42efbf825ceb16a5a6913f81cc5c1c0aea527555c75a1f0a45bab625befb
Date: Sun, 02 Oct 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664687453
