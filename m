Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3569A921
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05C0C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673367687;
	bh=FiqGjShIcwmQ6SX43GiSgabGBB0FbNvoOhmnmcwOKhY=;
	h=To:Subject:From:Date:From;
	b=AsWTwnJfE9NmxiaiD5IGW1/eVflCKEG5a4/LnuZS7AD4aGzGApUDuacCIhMlujQfP
	 T7NRJw7BoYghFzr6CfzlsJm8pn/HI+MD3MeAO4cO0McoGt2KriNxsMqQ1JuzIQusRa
	 yGSqOlm+uY/FqsDkChvIpLOM1e3IvVrcRKY6J5lucN4U9LLlj4I7lGWctYmmKMbQod
	 nAnjaWJeGeSX1LKzw8Y0XkfjJ8X5fPy+Nbjjmv92SRBRT7ldQo6B8cbTMv29seRxgN
	 +jvMZelRl7FfsTojj7JFktTodlYMJPg9ezehAAAYyKRlQ7laimGwGBWfByKe9dqVO3
	 O+zs3iAsFVhMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83A75C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167336768753.22379.3579553916295483059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241a80332b976dbd1b28ae6d658a9dcec227df044fdda126359d9205420a6044
Date: Tue, 10 Jan 2023 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673367687
