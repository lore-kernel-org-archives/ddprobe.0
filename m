Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FBA7C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 12:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E017CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 12:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681474985;
	bh=yMNgxtOA3w7q2Czl9loAjWrnBZ+vsdE5u4dnk2ylBuo=;
	h=To:Subject:From:Date:From;
	b=GaqkjXXAcf8w236He5EmpSSLwvXO9+soVjZrYy+GN7Bo0knRBo2ejJfyFfPFfYiJJ
	 818RgDwGQr4WzVFnafzkjNKMN1/eI6ibQVxubp3FFk3gmhmZq6oakjZvLoRiMj+jgT
	 zSNRsAITiu22glU7sYhC7MOioylObDuWBMdTw0chn79+NTD4nmRW83dgGlh5jJzGTS
	 dPjmcqJEFhnD0c8CePRLYWWRBYsodbR6LvM32MNgwkopfb4KO6faqh1K38zaqIboUf
	 b1wwwrmJi/yIetVq19dFsFvf7DRnV5NhrqUborcLmGvgNNpF3k9jvzl3V1Izwv3eg8
	 EGZ2mxuJdI9lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C80C5C77B72
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 12:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168147498581.23879.17104007842594388726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab9f7c4ac776cf1ff1b581a8830748fec67f00e3c053e276dd5c6f25b317f01
Date: Fri, 14 Apr 2023 12:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681474985
