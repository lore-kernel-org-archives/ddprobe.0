Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6C37E3
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8713AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671265287;
	bh=vMp8LrWjrb6zdteIHIoYy4+bqQILa8nRr+BcQQBSETg=;
	h=To:Subject:From:Date:From;
	b=ge/8MyITcLqfp6o2iVKCBKDbZfHbvr+S2ejIKQakrg9tVjG8f6s+zd5ftxnOW+2dk
	 7X+EA+ISLOz6jUDCHVwHfDLXm4g7hTqvcWVj4vATSgmI/NBs/MQShXHezxfRLwdOUM
	 kNbN5nvyM/FhzJZA7FNN36iPFDMXbIqiay2kmHFuND1A8cGHueyxJcZuAkO57wGo8A
	 8sPd0nB/xZb8WpD01YQqONWfXud5inr3KI7PVjVaiHdPmDzO6pmh1MrWoIbI2EHQkm
	 tBQwQmU+WyNCLOPUiyDGHe9DTZnestcbiRujKMnyz09dhqoai5mPes9DemXGJpTTEH
	 +9ke80fE0aF0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BEF6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167126528741.20363.8540385855875845581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 934ada1f16641281fead49ed479842b6193c7a60057b47435b2c2997bfc1418b
Date: Sat, 17 Dec 2022 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671265287
