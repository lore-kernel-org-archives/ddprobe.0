Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC343D72
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 20:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A4AEC433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 20:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661457652;
	bh=iTuHErmuvEf2B4ATkvV3n6wQ7E/ioIaGSN8SqImmXDY=;
	h=To:Subject:From:Date:From;
	b=QLvcy5tZW3Fc4rY1n+41YS+8qBkSgQAO6CvwE8qklyxi4xS7bVMfHfCQE6mOBnNVl
	 7Awicas+ivSOJy8dKGMJ1rQhyLEQnMyZssRhqJT93wEzMVOl395lIFRQubcwlEPqVr
	 IlFg0LBM+hnPiRI3ra06DW0yeQPIuJd1LukqlzaNT1h5DGVYdbPRoC16waK71IdBWm
	 1HfWIvRXzVIOSSdsaj0TRoXmYByRItBZuqMb0Ub7+dYuCvju1EkPT7pV5juXu2N7LO
	 /mfPw9+pnHQS9Ti4AGQCHPdppm/IptkIAg6tIxc08vSPzYEhBnt5RLrg5GUTbs53nX
	 FB5H0EBIQNDiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53ACAECAA27
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 20:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166145765233.3793.10756591845229205284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d9dc024620070a1204a87a096d2b27bf9cdb3725d86b0a68765d773a44f3f4f
Date: Thu, 25 Aug 2022 20:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661457652
