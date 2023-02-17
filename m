Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541679446
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 17:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00A13C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 17:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676654646;
	bh=/i5EGECnmxx9SZxjIenD0bA1dsbs6JmcdGkI0uia/cY=;
	h=To:Subject:From:Date:From;
	b=rRzCE0HQJwU3KCoWFE6aIEMYFCesTMeTFIhN2MRASRlX4/MGeusyfeWZ4iUI79oM5
	 YzJy1M44nXEkzwFhwgFAm43/WmxwHEZK405WM36SQcKDMthPlYllvLECsmST7QFqAg
	 rN+BKfeYzlL+4CKAFIIviDZyvlBNxzlC1KuWAi99qFaPe3TXoVR93uABQX9PskKJ5g
	 amidUpQQO1maKfL4M77NxuasUObxq0dvF3kLtKPioDWIf3/GSxwT9RhA8c7OZf50Uk
	 X96KIanPkRNyCFg2EGnTZYCTismlMuoVPiO2ustxsJ8iXdR/4OVwC1YCpQnc5RvmZS
	 ofzwsY25tkNEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D07A5C636D6
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 17:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167665464583.5782.728923448910883203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c283c7a2301248f54a175bc12ef905a8b5f52fff0ebfa730320858bb1213ab76
Date: Fri, 17 Feb 2023 17:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676654645
