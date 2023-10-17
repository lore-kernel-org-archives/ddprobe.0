Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A0210E9
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 01:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLtrv85/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA581C433C7
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 01:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697504828;
	bh=hdE9mDnlVHxc9yes1OxKUu/anOk/aXNV5qku77pdlpU=;
	h=To:Subject:From:Date:From;
	b=pLtrv85/nHHguJD54otlQcqsapMhb7JXa+W+t0N4EyJrFLWL1QWo9mbGAivBW8n5h
	 Qx0O3H+HET81+KAyB0LaiCl9CQT2/zEHZ9kbKn86thuE+dbP2Dog9ctKrRx0vlpJDW
	 AsuM++MaqKEER+CjDSCYJpIqd0NyzSybZ5o2u45Vec3WxOPSIZlNIWGTwhVg4SKLJt
	 yYWylWEYl7hO7t++DHKBe4AfkaMbduONwFt6Qkeyt288u6jgNj1rVQoJ/+M3Te8XHR
	 xlM6ykxMniZrLuNwxn9SOAPuxcw7uFJ49xC3lXdohffNbeEyFyIzlxQctQE479Fjea
	 eMjwR+ZjKZRmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC903CDB465
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 01:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169750482867.743.16913234668079682349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753c07d8ae859c338b62afd637ef148593357350a3cc68660626ab2763b46afd
Date: Tue, 17 Oct 2023 01:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697504828
