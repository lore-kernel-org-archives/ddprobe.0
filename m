Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE40AD50F
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AA6BC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669848654;
	bh=gMiB9x1flm2qU7IRymXO4d80/XtVM83XziOXVeT6ZrI=;
	h=To:Subject:From:Date:From;
	b=IOKt+xfPFOys0dhNOOGd+6WH6GiCsyLJPJ7xGS1oOVNhEFXskrYsaJ4FsUomWqI1i
	 Ylh4yXjS4UC3GhQ1rQ5/dagf/CO/PCqFNvZ9xPrbbrZluMA0F2wFQtZuRVlLNXT6Fs
	 F9WeezSLUn5U2XmOgz07hqlAwbjtbIe5N85j5zyfA2JA6Hh5EwHTSXLDYc+jWtdAxd
	 28EdH2iLe2szqvqNrDyeQJkpRK/PlQfCgMcHGN0lDvakoLxGGHWG+QWBrxYjH1Jsk3
	 SPZ3RMrYvoz6bqC5FxbV9bohnQNcW1iuySpi5PYnf378LEFRkFeM0saPP5ElbwX1/N
	 S1KfH3c6t/uxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5CBC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166984865431.32214.5112262702775463150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d213c5909dfd679db84fae5bc31704f1d72f72f7cb1a2018676ce8456d15dac6
Date: Wed, 30 Nov 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669848654
