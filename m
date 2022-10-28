Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C8E1FAE
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B8E3C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666992654;
	bh=BZLIv2coj/JMkTmKezRqcbhDzAwEJ+6AdYnH8E5aE38=;
	h=To:Subject:From:Date:From;
	b=LhfKhxbiPKTGsRZQeZBvaqV2tOOxjW0jf+cf39EX/8O6N8MKsIAbwQWKdjO5dDmWR
	 PyDl3HqStKaYw4QoMFsW3RoqLr2p3pWtK//3A5uHErNMlX1c674Kvag2Ymt6hjq58r
	 pSkxeluYLD/ayFWXH/eJ+LpEm1CJO6ZKM3zdMVEDm5l4RvH1/Hhf9hBnQRjmlgDv9e
	 q3SSzZIi6Vr/kfKqe1q53pwN5YXh/JaetANUf5L2szAb+2oiH8CdER1gqfJZvfipcK
	 wH5Gl/HHRN0sjfygBkWoJqyvUO2WpREHtdGNq/1CXLA5hjjSm7W1ggAmD1WIVe32qs
	 JJATEU6vpt3JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A93ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166699265433.15189.13399296923643682678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae4836fde1c521d02b0aff6d77335bd18c4f396b814d8a5d420209a936fc3c2
Date: Fri, 28 Oct 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666992654
