Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D693B5CBC
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AB6FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670943687;
	bh=HaKLjem6SujmTmMBIgZC+H48mK6XjmY+UaMtStLNAqk=;
	h=To:Subject:From:Date:From;
	b=mE2eV+kkQW9ivuj8vVzBeA8Hwm6c00oM/6qEpQNQMA/OHTh8DJjTRpjTdu2LeLNAF
	 po07jJ0yY8s6F7x0r/0RMrnUUHQ6lwpDv96ETKEd0NSo7X+MlZAquO8nAYggMHb4G3
	 JNQQCkb1BRtzd53RNmG7MaZCVBcfoCp4noapVon9xFhlFqfOz7fyd+i7jXxet0c3AN
	 CQYZTS9e/E3IjVFNkeMM+ZxIkQE9OKXIriVE5PmoMHCtkklFWU+FICwbNazQ10k1eI
	 vcRo/QQFOB6SEDiktmuzN6LXaL402S/UQA69Hn9acxlwp7KFxJbboT1orFO9UJWW0m
	 xvi01ELuDZ6TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69F89C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167094368742.24836.17819018446966367138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5982147cb9ce25cc13f22f7119ad057c66d79ae9ad33c40917cff70cd321d03
Date: Tue, 13 Dec 2022 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670943687
