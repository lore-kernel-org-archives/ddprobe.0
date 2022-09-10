Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C465A6C
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 694B6C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662828653;
	bh=rJojIWXxrfcrbP9+OQque+2NlxU0cIV1VafrKEJHKCU=;
	h=To:Subject:From:Date:From;
	b=LfQa2shsv3EPKg/6t0o8p5u+MQh2Vxl9EU8HFdEppPZPUqhMkBKh+2Jn2wrTEzTpN
	 07Frp7REe+/Mr7K4mgDNl17qdcRzuHuXyWhx2dS4sHocKtML6iH9aQakqs71On3DFp
	 XokDl3fI0EH+c9j1T5Z4FnOUdDGd4ToMurTZsvhRzIxyq4QOQgkeksp2Y5X4P+NXUg
	 mgA04Y3LQ7y0RErqemzTtQdpJgtVpl+wG3tjJ8fTILz2zTXDGorlFJIiSwRu/i5Obm
	 6ex1c7kL+/QuQYwg8ZmhSEgYDovn+dU/Bk9wR+2s2agqcDKaQHN93gpWrHx1b+1nqa
	 T36rK77duy5Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5255FC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166282865333.26149.15407591922967559105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ff4983de47d8a4839c863d9c363d8151964fb66815f1cc353b493b90158e4f
Date: Sat, 10 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662828653
