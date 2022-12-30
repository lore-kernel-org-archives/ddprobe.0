Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42DD256D
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88199C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672408887;
	bh=wKpZlj9QGJkH0w6bgsol8QyvVY6Ax66+ecNptKm38n8=;
	h=To:Subject:From:Date:From;
	b=RfwtoqcqtjiwsVkOVuXfF4CRKuFOhFpLOybIlwsPxdESGGbW0fMxlUJpsggQC+qqc
	 lyXUItpuhfr4scvrB1PnDE2OuTNncoZ9lvc5rKUfo1WyTIImjSfAV96k8c6I9/bJv4
	 CN2nhA3yBG1mXOHNKDUddk4dnN6DzBLWZxURo7iaEXAoMvVDK6mCnmMWepMQ4QjYJ3
	 eqeCUGHAFwCOewBmA+DtqEp8cyFQ23/KEnoJCuNvTwtnFKUGIJgah2VkIf/5rXkzHZ
	 3psMF9DqBIyLjfFEXQc99RLIGZgPU0CMrDnZhfRz0XRn9pRFh2mTRWgbK8OHsS6aDo
	 HGIgz/D7tSHxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BEF8C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167240888741.12615.1992362308680324921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf782708aee51dd41c17aa998c84daebf61b4622d595ab39db043b33e5a66be
Date: Fri, 30 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672408887
