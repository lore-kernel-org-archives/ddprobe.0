Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F577C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 985C0C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673683287;
	bh=JmLn8cOFaelAkpl+AsCwWv09N6ilrHtE3v7P2wiLEQM=;
	h=To:Subject:From:Date:From;
	b=NNpc3YFl205xkpToaV9i3A6wtMFQXDC3ZYc4e0R6IWR4A5uhDDRj6ecE99ZZUlzBl
	 SwhFozpbaXw4v7q8be7gQ9E4hN2wddFkBGPwi0gSMR9PPYUqOTI/vMsVAulq9Lo1w1
	 m6hvZf1jBDY5bWS7C+5QwpU01LL5OdL3/P9an9h4Za3B9IoGgeu4ilYpjBXkrhaO6+
	 vYP+Ug07jGsoVlHkFOi67EekfCqzZq6l+D1PHNqi6iAn9I0WZ0rxaAObnAiaogE3TF
	 IOtVdNzJf22iU9cpxia/jhKuN88v9qwSb5HIDJy+DG+xCmz+3PoS0An8U7w3EwW/oH
	 dVVaE/RPIkWGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7454BC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167368328745.9535.3490800557609755457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a0aeafd9d4a84e2f0ddbbd07b5dab194f47c2e726fe9e6c4ab819225c90ae4
Date: Sat, 14 Jan 2023 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673683287
