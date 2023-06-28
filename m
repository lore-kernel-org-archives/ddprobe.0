Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6143AA23
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 12:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68BDC433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 12:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687954388;
	bh=nc48S1oYaJhtLjSCh8rJty4u6QzULlScNlec6DNe1ow=;
	h=To:Subject:From:Date:From;
	b=N1l5X9qNX8bRygPyVK+rczRd/yTP1Vf/vCO/nwFM2uUIu/qRGtFJLZZlqZm3gfCjS
	 +qJku9iWsFJKOHh6xosWOyuqHmGFM43f+vcV6Ak9kTEQg9OuHaKKmnc1vGxYd1KhU9
	 GXe247ey9bbU1bajHW20qc37d7r3LWrVNEo4BhMks8G2KGRxragOKHupB6OnC+mGwh
	 h81XhdRISaNGx6HORCqgbhipcgBlXc/O2yLI2JA2exOifUpqz72Zsf/S+evQ9kmzda
	 neMPfD2gcLUWdno0PpWfmzTg1fucHQW33FrLRZPLzJtOY/7gdQbAvBA4tSyb4gDXQm
	 QcMH5SjC6TNXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22BAEB64DC
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 12:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168795438871.8890.17865320664636781768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e9dd2ff9d9aeb233915a9e66d4a353b44d690ccfc85f6cd631f12ba9abb3642
Date: Wed, 28 Jun 2023 12:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687954388
