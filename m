Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E160174D4
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 20:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75C7C433C9
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 20:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691526788;
	bh=sfjlZ8BljSMdmqentmIKTpskMWqmcjSSr4DYYwMOI+E=;
	h=To:Subject:From:Date:From;
	b=kNjGPxjWblVl3k6o6k8YNoXPhDmL3T+oTlPbxS8rEQPT2PhWoK9Oy7E/E+PeXK79q
	 TfXz5BhPNNrs88iB/rVQnxCrwWLTSAjUHBPV4zmmXwtXxzMHS1FvVwzjSKue+7y/4P
	 fEWdwzQ/SxF4r8MIBRANHaRieRsjIe/MGAL22ClnC8LT3LwMP7t1D/AQNg3TcXkKT0
	 KsRtPkZuZzFBMQ1IUuCVHAfan6+GmnhIhvxfWKvMy2t8ZFlJ8Ko4/xXdjcGDzMQNi1
	 mS7dozylTqlv3Yf8GYj6t/1UXTmZOUEnkOIG/KiTiHV/q0mA4A6MuZ6+xITJrmY1j5
	 RcWLypa7ReAnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B568CC001DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 20:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169152678873.8780.6294793615041651804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9335344b11514e20ce73a4f184cf2e8956f87884e07705f8a2dac636727109
Date: Tue, 08 Aug 2023 20:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691526788
