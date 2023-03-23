Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425B119F
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 11:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D429FC433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 11:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679570945;
	bh=rIb/mdgic93kMcHuER+Ht4Hg0d1RdDRRWJT/Yb45ro8=;
	h=To:Subject:From:Date:From;
	b=apA2uWbEWi6Qh1xJhYthHTw64qOKk66dJGa+TUbKOh0b6smSKETH2BkmdsFyVKJ9z
	 ZRzaVab3MHqScOjY6LXJ850N1/DSmyi76oqsZpko1zbG3pkgXgqzg56JKrQCHEJbUB
	 y9WuPUsoH47J3dgKDRF/cLSHNONLasmhJ9MzANxDwVoJOoyfLKB0KTae2KCRip8fH5
	 LuCAqi+GNF4rN3JfyS5WfPofMxFWrgvyq4oXiE/WXTSYG72L0JAhST6Q6m+a7EGPJn
	 1kwnqOtmYQdqvZ7A/XR6y4WOCDAVl77jMsUNlZDInICiZrEIlses2AiTnGYnzwfqW1
	 LFYYUhtjD9qlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EAEC6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 11:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167957094573.20356.14380349669326890819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d81871afa7f75f8401ca6e36b0ba98321381a29ce4ef6b24d5b454569f9ab7
Date: Thu, 23 Mar 2023 11:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679570945
