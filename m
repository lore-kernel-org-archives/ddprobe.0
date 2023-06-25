Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DD97464
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 23:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1176C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 23:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687737188;
	bh=kxI6VoROged/HIFJzIXo5jeyDaIavVnQiP7kvr2zYv8=;
	h=To:Subject:From:Date:From;
	b=uudqZ7fnaAM7RzEoOkQicIddkXqloo4zrKdelQEOkWnwVJeJ/pesWOW14W9xhPt6s
	 6On1SYSkK9hg9F+S47F3uBqw6vcoSaV4gxRvDDhrJg9E4ExsNriboy/bvCsfBzRHcv
	 uVJeyhppgVBbkfuZHN0eClY8TTJun+gjiZRII65vU5UpGmh4WCzIDoaa2N1p5wXMCc
	 52EzTYwjCn/f/AOMUIy9zVkltqsXdLIeXaSV3LU1DAu2BTrRO9lDkYxGHfZHNJgfjB
	 xFpL9EcWgYSxYAZS8rFC+KXkILXMs4tOb/MoDpAgDwf6NlY+y5la1Yhc5SRmN4LDHX
	 rd2HF82eU9YZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B6EEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 23:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168773718867.7508.7587328675576214341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba8c249f53bc1fb9d00ace18891da95f31105f75074893e2c80ea69bb04203c3
Date: Sun, 25 Jun 2023 23:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687737188
