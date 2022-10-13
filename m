Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B94AA3C29
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B767C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665678053;
	bh=8DFzTgvCZiJ5c3yiMIrvIPOfYgev5w6OlkqDxQp1iu8=;
	h=To:Subject:From:Date:From;
	b=ueES/YVipiKydbGiqQuI0qEDmpodWYxzasvdkGwhm+H9Gq4A1fPwES9QBUlGwFvv/
	 fN5ln7NFElqyy71F8V2M/ICEfEvDLjBMbNXZbi6Cyzj3gKXwSvRtjalLlqwe1NrDHg
	 dELGA+vo5p12zvvBIRt8gptGfEsExYSM1vsXOKm10b+BaxohZozDeRW3H6xq5XvI3o
	 buzn+e95lCB4myVjyGZoNuNWgv426IinDkMx+vpmb5L+DiuGkpaKJ5BiXIySVZk3PT
	 5kfPpwYp/jsodAMb+xC5EdjAZYKqUDw41FBMW4xhxXoygZiUJ/dHAVC9tUUlbA8XPc
	 7BeRiVJuCR2yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63FCBC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166567805338.23687.18087220287078526343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b3728c1f0240ac595b250dfa430d3c9259cc05b553ccff33066587c0059172
Date: Thu, 13 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665678053
