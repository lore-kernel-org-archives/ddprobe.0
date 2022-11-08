Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2CE36119
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 749BBC433D7
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667928654;
	bh=mcnji6q7veML/mdDsoC51r+ojrLF2En1KOf99syJzhk=;
	h=To:Subject:From:Date:From;
	b=WnIJ7aCnhfXF8D8Wn+ssjQkgqY5ukCZLkmCMVKZk+nG3C2CZTlYmLz6kRnXjJ8cqI
	 0rnm20kfq40OZFZ5gyHyOL1ygO1Y0jS43kwANJU3mdg7CibSKxEKOkA2BmxHPnd2yT
	 eAdAtoDHp/zW9DlEtDmJtoP9YVZWtSkTvGkYfBIi7h0CuiJZzy+V/+xybSOEXd3PLl
	 axqXZqYzQ7pSBnDr/jAgQ82CjVTMBMUv3Xq0C9YL4Lq2jp9CXLlyc042m+ZdloXSci
	 pCAYqpOB4TQW5g9N7+FOX6wrzzpICEQb36PSQkvwGG39ykQqmmrVA6KIOyiRsyZ74Z
	 grKVkmnNKk6zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 593CAC4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166792865435.16783.15215409969135646857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b06811b6b9cbb821d9429d454c2bef720c42fd22ecce0ed9c5b5ab9dab75de
Date: Tue, 08 Nov 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667928654
