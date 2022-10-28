Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B86ED2563
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E0D1C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666965654;
	bh=FD8KY76B/A2ut2hqyT2ajxzsUiHrbPYtB/tvyVm0YUw=;
	h=To:Subject:From:Date:From;
	b=uyxfntCNwBx00O7VCmj8oMtTBCgQOed5WZzuqOae38J35mapseWcOt8f+kaEzozRW
	 Bgb5k0ZgR1lQHGFiOT+KtWnWRX/r2ojz6FU6D5/a+71xu9oOiQNVv8+/oFWeAyLNul
	 c09/93KHNufecZ9UHM0oR16fOQXJvSD+O7E5On1gmRk4YVf2q6I0JV9Eb9ndnmH3yq
	 5RoKc12pfexusTSyOXp90oWhkBlkcKyfzZN+0g07LwoN3vH/ey6JwZoYE6i7L5xlTw
	 mG6+8LatrwE9PCf4zAJ0Pj4KNwAz3WWOeK7TldsQSQDXLXgDkLGPe9QnRJmgu9TjA5
	 09IrqjEfmLkfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57100ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166696565434.4183.6285418227252716408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46ab04021e2d6977f33f9fbf5de22885cdd68b35d53ad5db6086ad11499d0cf
Date: Fri, 28 Oct 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666965654
