Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E681C3F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 05:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A64C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 05:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688102588;
	bh=58jb68VkVBqfS7ZI8zSw1az5dS1qsSA9XH9fS4UWxtM=;
	h=To:Subject:From:Date:From;
	b=FODCSQO2P8ZG0EPvNVr2D/t/TZdt91JmfcvT09xryAhaEs8Nh5tZl15OCbACgcXR7
	 1o1OTVSUc3G0Z+rdFXlWbxrzJajw5iCOYOJNyAtHjduZGV2+ecdmS3JxC9IBuj8a6j
	 tEfA40oIjmXxUWN3uPUu22+mwnXhKT1kOKFi+8TWOCw8u1lIuVYewfdhjGPTJT5M/2
	 ZvrIjLaScQS3WzAVv1MxN00dDqncIxcDRd3L717t0UCxIoNLOoc5n8AUzRr9g7iis0
	 WsCLI8U6blV/tZlV7yEErImhHLkivXv3S4h/6axDRhIRat/JExCm6i3PxaDVrHL/lA
	 qWIbVLeFJC6vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30D9EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 05:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168810258872.23427.9309925548003655309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2b60559a9d2721ad82cafb8a099033614d191243fcb4573685190e2791be19
Date: Fri, 30 Jun 2023 05:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688102588
