Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D7615A7
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 06:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DAEC433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 06:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681195325;
	bh=V8SQBx5ZMQflnVv3BYNxOJjPpU6zv+uSp4F0Yy1hOl0=;
	h=To:Subject:From:Date:From;
	b=uvMCh96dvfs6U4l4oAk8rI9HNt6YWJ6OOmlO+sZvOh+a+vseJk5xueO62coSZBb+N
	 n8aS2fug5ZW0dnoUnuBqF2Tw8oE6s0pEoUGXdR1jRrW3kznupISF7XevmhSTmTNQYN
	 h2nMNOwbuQryiWHhaoylot79Qbaax/k7hEf5I0TE+STXz9iaUSdWX24wQVMdUU270O
	 Fnp945SBwRYeRYVALI/oOgkTQHchNR+Myhv3kMaJ8I429wF3vFsSA/fKoXqo1uPbFT
	 4HYS8QMo/HptgtOcNM4vyx3uXjJlkaM2s9/FKZwR2G9IL5KCGqplFuIDtCZ80B4hus
	 YByeQ8dojV4bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B630CC76196
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 06:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168119532573.11789.7876498824331435969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4873cee408f68d832f13071a0c3bbd0f3c2de5e69a10eb537d17835f9f5b8d31
Date: Tue, 11 Apr 2023 06:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681195325
