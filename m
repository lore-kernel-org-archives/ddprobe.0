Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF8E7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68601C433D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663062653;
	bh=+JtTUgH2f7a98/mfd2Dbduc7SYg6YqIHAkyMzTbWf2E=;
	h=To:Subject:From:Date:From;
	b=n3Rkw8BUmj9TF9r3Psxl9Ztaw9jIhypRV3X8BUeW8fZM7rciU+5SuhXKVOKbUaUcr
	 iL5VufTW1uq36oRo6a5eH3ENaWHE0qlMhJSybetMYL76rQThEWuXIdIlGqWm712qpV
	 nmCMwZusKnemapBy/nMIfd8ckwJxuuGqkP7Gjl8afZcNFfEjTuUlQP12qrfn1V8PLO
	 eRZ3cV9QywViRysC9B3GMD8u/2VNKYll1doXaAMWU67qEZpgK22gGHei/F9UKoBY8u
	 OGwaSTaXCS0NRoD1grrAz7risy1nlO+k/kVQm0zEsPtHPhq9jT7XuksmNB7MsiE6p8
	 aZfNrp67Zl26A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB9FC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166306265331.4877.17902929386264853868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572f45997601ecca2c8504aa995729b518678dc4fc540f91fe40d491eaafb366
Date: Tue, 13 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663062653
