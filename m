Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF92020E2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F28C433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671983487;
	bh=eNGTwbe1V3v6bJAx8dnK7qurBXWdkxKXQ7WwUy8gJoQ=;
	h=To:Subject:From:Date:From;
	b=Q9TWGaGirWc60rg9FoBC9M43dwu9LJyR8GOdmuubX7vc9O2Tbpw0ey55I2VdtSH3p
	 awBDW3w8XUo198eHR4g5m0EMLBQVnUVCXHDwf/pnPsk6yvzTJt3cTouf+qUdY4JivJ
	 fpVE1dhc2JWmJ7RJNicm9FDrwranpmZG0mbkghrcgOxZ5hDnLarosfDp5ieyyY873V
	 lIcfsYbmnEWMPBN8AjBUIQWnVbbfOP5An1rDYh1TqwzzkFCxEo4BzZ3kEeuPclcHye
	 gMw6O1jzXxFelkix2jvpccVFQDK2MxGkD9H3TpApvDt9JMuUowPDGcfJv3TpgxTkIz
	 zyqzHpGtmqFBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 878DDC3DA7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167198348748.13564.10095099974599641155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a980d66a84f3441f29ff7deba448221726785738083f42aab60003e1e054601
Date: Sun, 25 Dec 2022 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671983487
