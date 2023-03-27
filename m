Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EFE377
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 06:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8879C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 06:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679899925;
	bh=AiHjDUA/k/rgIxMzjRU0gkNjem65yHEd0JXvBrHTGtk=;
	h=To:Subject:From:Date:From;
	b=qaBIIYNJd/im+5VfnE2gL3bm50eMA9sYhikKjm4BW+YHjxfSHloDE4/sU4SOV8zFR
	 rQi9dgqag9Qdmu8EDf74Jg1WJUqNDVH5r/9q2sJut3kYMVnTFtSuT+HqRmv5q1GkLV
	 Uxedpfrg9nl3inooDtZE4S3yLWva1rvLZCFd8D8Hqvj8Zro+ueKcPS0U567dBqJJ9c
	 wZhl32AzfslUIntPVqw/vGrfxHhx7AUar5agKYv/Lx2WPIpLUqgT9oIzlBwZUxZ6au
	 pRa388oHmBZvviHq1jJgbHrt+VVN2fEWZGZxao0/PMZ5CH3qAecAiYMOTrDPBlZ0Ka
	 CO4ctelPQFK4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D49C7619A
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 06:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167989992574.6243.3896416548211526321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0a4c6ac7f274a472cbb75d06e26e36d50f50b1e58bc6b3331b9985a2e8efae
Date: Mon, 27 Mar 2023 06:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679899925
