Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D887417C5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76EB4C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665464453;
	bh=rXmkTU8/cfyFER24Y9ZvZqFIjh/BAv3Kj5xhU5ocnBY=;
	h=To:Subject:From:Date:From;
	b=Hqu6GYSNH6vEQ/H2Yg5EdfR39T2TWwHz8pr/G9BA0Sm+z5kPcBdERTk8BAGAbHRWd
	 7lApnfsSqHdc1a35aYd5VQ5ZZkOQet+X21+ZN2F8JdSpNFKVzJlB+n2vsx4RvpKar3
	 Gvbw4mO/g0qJxKydbrq2vZqkmMxDfu35zqheBDa3xcPV9tb+puEfZTonloGDXWRjuZ
	 IdApPSpPiDdYovHPfpMYjeS0ahVqZuY6OXmLL4d9ZjjvwsTsxLqh0sHSvX3jrGd2cy
	 ffnHhYOnoPXsxU7HbIOhY0i7cCRmgMjAOKdd6sLkvRjOJu8dcLsoyRigDPi6FaAhU0
	 f0vDeEnJEUEnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59292C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166546445335.19212.1501749647285758056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3af27030d603b6d105b87de8bb9d134f391267288434e819ee48f75d3d86e8
Date: Tue, 11 Oct 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665464453
