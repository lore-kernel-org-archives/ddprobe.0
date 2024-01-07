Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F125E15A6
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Au0geU3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BCA2C433C8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704586696;
	bh=lPYJ8Yx5I+PMa36c/ALVTrERNmf7gBswyMu+92orukE=;
	h=To:Subject:From:Date:From;
	b=Au0geU3IUEWtJ6EeqoAbp3pCufp4CVurjjRlHDNF8dfMxvQe/cTF7DZQMpqVP9fSt
	 ApkJWB/MznVK6ENMZtJ747Hlcz9NNUJwj2U+QX1bGZKWClFZ1ANYbRTztnrym0mko9
	 P4YxKg88zCTbOJj7bYS58z0BSurwk46O1v5hHJSQ49XGBoSCdcbmURYWrBj+hkiUC3
	 F16F+WF987iWfDA9hAIvTJNdSAxvWYYkQ4u6BqsSiRk9FwZhmZHtasjvah3rTQaF+j
	 2UHEIl8GY4q4WR2Chewjb1gm2dq2HTv+DZy/8bE9Qqt//PnCpjxBoNyPjvJ/UviC0A
	 2PVQHcy0F3D4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6249BC46CD2
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170458669636.29197.2584170741989758785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b048edc3cc76d4590b43239e835ceeba37834efd5f624192028bc8048c7c57ce
Date: Sun, 07 Jan 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704586696
