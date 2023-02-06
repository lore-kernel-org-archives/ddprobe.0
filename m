Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C89023A0
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 06:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CA4C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 06:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675665965;
	bh=R6nJsleImcicN+68OCCuv7iQL5LiFRGRuQCXV+RfCWo=;
	h=To:Subject:From:Date:From;
	b=BU0Z0cBk5x1a7NQmIzXKxMts+cnXDemO2gEz1pxBQNOcvoKS7JjQXKwTFdjp1LXnS
	 q2iKVvM3ql3Jx1hptkXtKbjf3+iVfF1qnsFg8hQf8BaUXtx2YweU+kI/fuQ6EIuu+J
	 smj9qKrFt4YGERpqgen/V7ItgaHSG5Nwr6KFc81+1SDAZGlyrxwhsDbsWNtfCdIHjl
	 C0lbFyzHGJqFWCnue8Qt5NOPiev+83QO+JMKSFKvqAG+3qxfQMPzh9/Si0uhEhVIw7
	 fQUxl9Z5Y1B1jm7KyA6r0tQnY9BV/okh94NJRt8Ph+0dIP7WhK3HzJQQxRFVtxGaDN
	 M/VLv+bqAtEXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5A0C05027
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 06:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167566596577.22412.8144755769438357533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0347f7e0d1ba23975484592a11b7ed98fc550386b67243613f93960e4b3c2958
Date: Mon, 06 Feb 2023 06:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675665965
