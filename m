Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6FDD17CA
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A92C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665555053;
	bh=gzn7AmV2wPrk8uTFGqaQBPvbqE8ftv6IZr/0R30B85k=;
	h=To:Subject:From:Date:From;
	b=e9wYO0IzIrSXImnOOtdnpK/onx0OneJbn57yA/my5Ixe22GQRkFQ4DXBQm8h09Hup
	 mWxHUu1ZWHGXTHM+6G3R3cnqqAAl1LvlxwGee0psEgZzdeZvoBXiJa6CdYVsMFBrBO
	 XZAi4/Und8ijm9lF0AZtSlLveFKfmKovRubGPkY7kf76cWXB8XOr26AZVTOjDoEYRg
	 NHFcbwLI8ythNNqett86V4ff40jABGZ2JNLpSy2wIbmPWIwrGkdifv6qmdAuKF/pQX
	 tj00UZ4Q6LVAtAnVkdffLZtgdZLZbLDqIMhkQ7q84g3JT9eiqp44R1QvfO9/K3P3Rg
	 MyQRn+YFS4EVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F54C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166555505335.10138.7220456601519345595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a110764aef0df8b96f260f2439fae813d3fb483d840ed536d31eef0452dab82
Date: Wed, 12 Oct 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665555053
