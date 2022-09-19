Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDFFBA2C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F946C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663565453;
	bh=Y2S2sBgFGvytKr+l1I3v9x3ls69MKQ0si0qnB9hH/tA=;
	h=To:Subject:From:Date:From;
	b=tEr8CzAFuWFcaQGYz4+Uz1z/ChnfFajZX66tkW5FqpwzkyYsly/vKAwQbp4yI4YVd
	 fuqGpcyCgLhNzKwjvj2k1I5vRDfGUFej/QT5lQ4hA+1ZAXl5IJNJo+O4MXOJPIwnk8
	 rW3SmhfbgAI30sUUmRVuuu4NYtoC0XQkI+npk/P8Ih2J8KLsN+TcPyM9WBdGUyUE34
	 IID5hAPEuY9IZGWf2hmPb+Dpu2htoPI/98F36HA3bh0CMyPWg9yBQLEUk4XDrDfs19
	 4Zp9md3EgQ9NHWlaIUEomj/3z7foXLFRxq5sVa/7M3R4+qrnaViZm4AeJ8WD+1hiGY
	 3AwBPgJ3nhf6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A44ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166356545333.16395.7497456662405929608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e4c20330dacd756eb2c3c9b8b94f40c3482870015b46760653d5f279a2895a
Date: Mon, 19 Sep 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663565453
