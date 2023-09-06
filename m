Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2E662B
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 02:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FB4C433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 02:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693965848;
	bh=ku6Dm05RAlJHNxCLwEuwnwJLYGk6svqvOA7zuugUgZw=;
	h=To:Subject:From:Date:From;
	b=GXcyYn5wwTciYLYX5KFql1p5EDCCxWxjNAZZLm7g2O18TOORZY3mJu4BIsI0oEGrj
	 tGYHdaEvUNf/D9ddZEIP166+eKagDSOJNSy56RUfOyMNz0zo5bJK39yijzqpsGvGE0
	 NzXGEvvqoKxCT5AeX9A9hFoKZwtyhoYSAffiwaVArzCuOu7P6L9C/Dc+RZWJCTFLt7
	 7VWCF5OJZuSWz2Q0nGrFLMzDVnNzf5BrVuyzhsFXTXTPNhLlE68u0or6PfSRCw793V
	 z1yvvJ7ad7EyndmlLTeiHhyQqPXU1yj+OcnXq+AOJeuCEeNQzTbpETtDD6kg2l0hjv
	 AStLXNPF/zKZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA449CCFA1D
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 02:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169396584875.20888.5217122422056708477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6434f29e35b1d8ade21376b5d06ab81351cd4ab446fb7df35ce9f02d1fda2c
Date: Wed, 06 Sep 2023 02:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693965848
