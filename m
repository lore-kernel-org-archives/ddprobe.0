Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25E28F57
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1527C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672774287;
	bh=EINmLQ5GN4f71pgP4ire+uR1Q/GEhUYkPznZ2ByLclw=;
	h=To:Subject:From:Date:From;
	b=RIC7DfSkOgo6f98daJRHVXgacFo1qB/EXuR1lp17TJx/pJ7kClFaHam0X5OBntnBZ
	 tv/H6XUsJE9du3I8q3jpdi9716XFT7Qfucf5OOi2Kv6HZTK7f31dCrS0hKDXf05P0z
	 OHZ4E8Ep6f+X1jIh/WO7naVw7PQNLi3MjoWaYhWA+DGIlQSLy1fdjw4YwVfe4j0s/9
	 S3vcFwxgiC4RuCUCwSRb63vku87oX008f8LMgqdEK5/41wFD1MPfcl8vY1Pb/X7bvE
	 Jg34HikWWvQqae4SaJ7hLgXBAQTAHubJ3iwBHHvH7gUTdgcNMzTwNo+9Wf35DkqUUY
	 eDi1N0U4I7RKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81949C4708D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167277428745.23488.6733359961697358833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1612a39bd0405b658869171d16c8e3eab17b6b790f65e3400c4fb21c8e94d13c
Date: Tue, 03 Jan 2023 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672774287
