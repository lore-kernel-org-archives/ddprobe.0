Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B702574
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75E0AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667058054;
	bh=pApeeVM6xW1/W19Hxw9fT5ks8Xr+gorJ/ORwoPmRh3k=;
	h=To:Subject:From:Date:From;
	b=Jef9CcfnlAZk6WaNilxPl3dK3fHsOrE7+KauYIr5qpg0wdAVpgfOAH1vDalb13ceD
	 KuAKzOZLpANeFJUu7radUgzipr/k9f0XMGa+QAYbXBu2BY1AN/ZQd5Yh6EUC6XqEcR
	 +7crCrcZCtGa/CifQrFZ6kzHMq8W1mYwc2Ma4b8gfzCKWhSHxZgLazKEfqkIpBE4Ur
	 f6lmfRr0H5kh592J5bxPFcCV0rt0yELe0NZ2y7PG4FATeHOEollJ8dM7elNEQrtfgR
	 W+CsNO3hx9L8vcyOA9S6xwDl3NLte8nNgAMxYS11wckZF8ldhKzLmwzwkoBbE/DSL3
	 MCkV5tYfsNYWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59903C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166705805434.2341.3315692071949928081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2ef4bb247db57383d6ccabba5dde9687dc075e94f72e30784e21742a65cd10
Date: Sat, 29 Oct 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667058054
