Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51D97485
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A297C433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674139287;
	bh=twblMmExLhuiIYYTGHizrEaJZJoOoPeg4xdn+it1wWs=;
	h=To:Subject:From:Date:From;
	b=CSq5fqYLTO6HqYfRKQsp3q/m4sVXGImEyGPVIc4H4Ld8Aq/i7VU9OdETVujGzy9dE
	 LR9bmXpTFM/1rPz0Ffbs1BxaKN9dd5ojrvmfvPsObyuzpy1FRcKZTQIGzZmVbtBBJY
	 gXd1aQ5dpM/KkoNHmqB3eVUx6JXqB77N5nbwgaRAN+jdELAQgV+4uXCuIaUA8xDcly
	 AU4QSE5jqlA16JNhJqFTV0X98IoeMFPjdeouZFo9gbtTsG6FpuB70CcDU2X5qBI+Y2
	 PYRRltz0WwULfj9C3iTUYl/YE4rmxgqkOwHI2myLhi9Q5vtZr4p6Dk//394zvegjXg
	 EHcEEXUhczgLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DA75C46467
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167413928743.1026.17899072101013281679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb1d731c35abb9359f4ab1887a1a71bcc380fe03516391a19e0f096f3ce93aa
Date: Thu, 19 Jan 2023 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674139287
