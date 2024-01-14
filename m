Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3D57E
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVwvo+8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 856E2C433C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705207096;
	bh=c2nQ8UifGO73CkKQ8MCNkvHN/Mz+uMJY5VUZqBvK4Ek=;
	h=To:Subject:From:Date:From;
	b=TVwvo+8xOvpKhn5FeA/B4yJHj3SpIl8nQEalqkDue8NVaYWctJTMxugkC+JBBeRPB
	 UvXxkvlY910M2KbhmXceFvilw2qv+w0bMsxX+tK4ScZ6SsAz3l5NHzWujMAAZRy8Wt
	 v3JPtFVTBhbAWOFIp99YdHpfj0BDe/sNWO3rqFVDAgSc+NfTjofQTh8ydSgX1jjfHl
	 PMvzJqr+qFiNURhAZKy+zEdHqi1xx9MdrWdPzwdaTSb+ELjXBbbOM3gwQaVAY18qTj
	 AMm7QH7rH6ds1S5cn3V5uCme7YN8hn7cszx29eix+VWWIg0hdPZIRGNsudhqcPLjU3
	 HDqR2J8IH8T1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A559C4707B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170520709640.15041.14168075019750244280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f00ce76a16ae2393de36957f23abc1e76e7cd01b5a74841159e2c1a5a06ce01
Date: Sun, 14 Jan 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705207096
