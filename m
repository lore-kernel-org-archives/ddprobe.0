Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C512F27
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F856C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663318853;
	bh=vrWodmgPxDuWVEPIosnPPBjhWDPDGkazOarO9goZgj8=;
	h=To:Subject:From:Date:From;
	b=HT8R+5VyGblJja/3zrmWd62QIXLX9xW5nHr9X24+s4s6YDgSeN/GgmdNJM4rm5ja9
	 zcmVF54vZbvBkzQDEU9PNlVVb5W6aUP+BalYERlkD8wnj713TjzKtwjpu7DRlHRvp7
	 pQd2Z0buxc4ChrFI+drn1/WlNrhwdxGNS+KyuaOtE1LdNpeT9DOLu1YtpMv8eZ7u/A
	 Gv98bQVaKN0RumDU95KP48XpuncTKd/TYH1UAfCZH2FduMPvTQAuS2shf2a878fYyf
	 e1eEH0NO4kxuBHMObLQhSdOpC+RKGUzP2shAKM33HiFGAJOHtw5eIu657H1Zg+BTLl
	 cMji/ikQRqy3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C1DECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166331885332.30247.8203924803420355241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b6b040510c47cddb4ce7b8f6c994e041655c60d2d802398c1ba451b32bb7f3
Date: Fri, 16 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663318853
